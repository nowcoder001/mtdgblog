<?php 
//管理页面后台文章
class ArtController extends Controller{
	//连接文章列表
	public function artlistAction(){
		$model=new ArtModel();
		// 获取页码
		$pagesize=$GLOBALS['config']['app']['pagesize'];// 页面大小
		$count=$model->count();//总记录数
		$pagecount=ceil($count/$pagesize);//总页面数
		if ($pagecount==0) {
			# code...
			$pagecount=1;
		}
		$pageno=isset($_GET['pageno'])?$_GET['pageno']:1;//当前页
		if ($pageno<1) {
			# code...
			$pageno=1;
		}
		if ($pageno>$pagecount) {
			# code...
			$pageno=$pagecount;
		}
		//$art=$model->getlist();
		//分页
		$art=$model->getPageList($pageno,$pagesize,'art');
		require __VIEW__.'art_list.html';
	}
	//连接文章添加页
	public function artaddAction(){
		if (!empty($_POST)) {
			# code...
			if (empty($_POST['catid'])) {
				# code...
				$this->error('index.php?p=Admin&c=Art&a=artlist','未选择文章栏目,发表失败',3);
				exit;
			}
			$date['catid']=$_POST['catid'];
			$date['title']=$_POST['title'];
			$date['content']=$_POST['content'];
			$date['pubtime']=time();
			$date['lastup']=time();
			$date['comm']=0;
			$date['tag']=$_POST['tag'];
			//-----------------存储图片目录
			//文件上传
			$upload=new UploadLib();
			if (!$path=$upload->upload($_FILES['pic'])) {
				# code...
				$this->error('index.php?p=Admin&c=Art&a=artlist',$upload->getError());
				exit;
			}
			$date['pic']=$path;
			//生成缩略图
			$image=new ImageLib();
			$src_path=$GLOBALS['config']['app']['upload_path'].$path;
			$date['pic_sm']=$image->thumb($src_path,100,100,'sm_');
			$date['pic_mid']=$image->thumb($src_path,300,300,'mid_');
			//-----------------存储完毕
			//存储超链接link
			if (!empty($_POST['link'])) {
				# code...
				$date['link']=$_POST['link'];
			}
			//写入数据库
			$model=new ArtModel();
			if ($model->insert($date)) {
				# code...
				$this->success('index.php?p=Admin&c=Art&a=artlist','发表成功',2);
				exit;
			}else{
				$this->success('index.php?p=Admin&c=Art&a=artlist','发表失败',2);
				exit;
			}
		}
		$cat_model=new CategoryModel();
		$list=$cat_model->getCategoryTree();
		require __VIEW__.'art_add.html';
	}
	//连接文章修改页
	public function arteditAction(){
		$id=$_GET['id'];
		$model=new ArtModel();
		$art=$model->find($id);
		if (!empty($_POST)) {
			# code...
			$date['id']=$id;
			$date['catid']=$_POST['catid'];
			$date['title']=$_POST['title'];
			$date['content']=$_POST['content'];
			//$date['pubtime']=time();
			$date['lastup']=time();
			$date['comm']=0;
			$date['tag']=$_POST['tag'];
			//-----------------存储图片目录
			//文件上传
			$upload=new UploadLib();
			if ($path=$upload->upload($_FILES['pic'])) {
				# code...
			//删除垃圾文件
			$this->delRubbishImage($art);
			$date['pic']=$path;
			//生成缩略图
			$image=new ImageLib();
			$src_path=$GLOBALS['config']['app']['upload_path'].$path;
			$date['pic_sm']=$image->thumb($src_path,100,100,'sm_');
			$date['pic_mid']=$image->thumb($src_path,300,300,'mid_');
			}
			//-----------------存储完毕
			//存储超链接link
			if (!empty($_POST['link'])) {
				# code...
				$date['link']=$_POST['link'];
			}
			//写入数据库
			if ($model->update($date)) {
				# code...
				$this->success('index.php?p=Admin&c=Art&a=artlist','修改成功',2);
				exit;
			}else{
				$this->success('index.php?p=Admin&c=Art&a=artadd','修改失败',2);
				exit;
			}
		}
		$cat_model=new CategoryModel();
		$list=$cat_model->getCategoryTree();
		require __VIEW__.'art_edit.html';
	}
	//删除文章
	public function artdelAction(){
		if(!empty($_GET)){
			# code...
			$model=new ArtModel();
			$id=$_GET['id'];
			$art=$model->find($id);
			if($model->del($id)){
				//删除垃圾文件
				$this->delRubbishImage($art);
				$this->success('index.php?p=Admin&c=Art&a=artlist','成功删除文章',1);
			}else{
				$this->error('index.php?p=Admin&c=Art&a=artlist','删除文章失败',3);
			}
		}else
		$this->error('index.php?p=Admin&c=Art&a=artlist','获取用户ID失败',2);
	}
	//删除垃圾图片
	private function delRubbishImage($art){
		$img=$GLOBALS['config']['app']['upload_path'].$art['pic'];
		$img_ms=$GLOBALS['config']['app']['upload_path'].$art['pic_sm'];
		$img_mid=$GLOBALS['config']['app']['upload_path'].$art['pic_mid'];
		//删除文件
		if (file_exists($img)) {
			# code...
			unlink($img);
		}
		if (file_exists($img_ms)) {
			# code...
			unlink($img_ms);
		}
		if (file_exists($img_mid)) {
			# code...
			unlink($img_mid);
		}
	}
}
?>