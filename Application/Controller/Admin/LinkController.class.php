<?php
//管理页面后台友情链接
class LinkController extends Controller{
	//列表页
	public function linklistAction(){
		$model=new LinkModel();
		//$list=$model->getLink();
		// 获取页码
		// 页面大小
		$pagesize=$GLOBALS['config']['app']['pagesize'];
		//总记录数
		$count=$model->count();
		//总页面数
		$pagecount=ceil($count/$pagesize);
		if ($pagecount==0) {
			# code...
			$pagecount=1;
		}
		//当前页
		$pageno=isset($_GET['pageno'])?$_GET['pageno']:1;
		if ($pageno<1) {
			# code...
			$pageno=1;
		}
		if ($pageno>$pagecount) {
			# code...
			$pageno=$pagecount;
		}
		//分页
		$list=$model->getPageList($pageno,$pagesize,'link');
		require __VIEW__.'link_list.html';
	}
	//增加
	public function linkaddAction(){
		$model=new LinkModel();
		if (!empty($_POST)) {
			# code...
			$date['name']=$_POST['name'];
			$date['url']=$_POST['url'];
			//写入数据库
			if ($model->insert($date)) {
				# code...
				$this->success('index.php?p=Admin&c=Link&a=linklist','添加成功',2);
				exit;
			}else{
				$this->error('index.php?p=Admin&c=Link&a=linkadd','添加失败',2);
				exit;
			}
		}
		require __VIEW__.'link_add.html';
	}
	//修改
	public function linkeditAction(){
		$id=$_GET['id'];
		$model=new LinkModel();
		if (!empty($_POST)) {
			# code...
			$date['id']=$id;
			$date['name']=$_POST['name'];
			$date['url']=$_POST['url'];
			//写入数据库
			if ($model->update($date)) {
				# code...
				$this->success('index.php?p=Admin&c=Link&a=linklist','修改成功',2);
				exit;
			}else{
				$this->error('index.php?p=Admin&c=Link&a=linkadd','修改失败',2);
				exit;
			}
		}
		$link=$model->find($id);
		require __VIEW__.'link_edit.html';
	}
	//删除
	public function linkdelAction(){
		if(!empty($_GET)){
			# code...
			$id=$_GET['id'];
			$model=new LinkModel();
			if($model->del($id)){
				$this->success('index.php?p=Admin&c=Link&a=linklist','成功删除链接',1);
			}else{
				$this->error('index.php?p=Admin&c=Link&a=linklist','删除链接失败',3);
			}
		}else
		$this->error('index.php?p=Admin&c=Link&a=linklist','获取用户ID失败',2);
	}
}
?>