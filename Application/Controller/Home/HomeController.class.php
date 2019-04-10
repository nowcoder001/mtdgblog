<?php 
//管理页面后台主页
class HomeController extends Controller{
	//前台主页面
	public function homeAction(){
		//更新一次点击数量,返回总点击量
		$model=new NumModel();
		$num=$model->updatanum();
		//获取侧栏信息
		$model=new CategoryModel();
		$list=$model->getCategoryTree();
		//获取公众信息
		$model=new HomeModel();
		$home=$model->find(1);
		//获取项目信息,1表示最新的,6表示只取六个,12表示项目栏目的ID
		$model=new ArtModel();
		$pro=$model->getPageList(1,6,'art',28);
		require __VIEW__.'index.html';
	}
	//前台分类页
	public function listAction(){
		//获取侧栏信息
		$model_list=new CategoryModel();
		$list=$model_list->getCategoryTree();
		//确定分类栏目
		$n=isset($_GET['n'])?$_GET['n']:0;//确定栏目div和li的位置,默认是显示全部
        //获得一级分类的总数
        $model_category=new CategoryModel();
        $m=$model_category->getFirstNumber();
		$pid=isset($_GET['pid'])?$_GET['pid']:'';//确定父亲栏目(一级栏目)
		$id=isset($_GET['id'])?$_GET['id']:'';//确定子栏目(二级栏目)
		//获取分页信息
		$model=new ArtModel();
		$pagesize=$GLOBALS['config']['app']['pagesize'];// 页面大小,显示的条数
		$count=$model->count($pid,$id);//总记录数
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
		//由pid和id判定执行的SQL语句
		if (empty($_GET['pid'])&&empty($_GET['id'])) {//如果没有GET,则直接进入栏目,默认$n=1,$listnum=1
			# code...
			$art=$model->getPageList($pageno,$pagesize,'art');
		}else{//如果不为空,则按照条件sql
				if (empty($id)) {//如果没有id,那么肯定是点击了父亲栏目
					# code...
					$art=$model->getPageList($pageno,$pagesize,'art',$pid);
				}else{
					$art=$model->getPageList($pageno,$pagesize,'art',$pid,$id);
				}
			}
		//获取公众信息
		$model=new HomeModel();
		$home=$model->find(1);
		//不同栏目表现不同
		if($pid!=28)
		require __VIEW__.'list1.html';//正常的页面,普通页面
		else
		require __VIEW__.'list2.html';//伪瀑布流页面,项目页面
	}
	//前台文章页
	public function artAction(){
		if(!empty($_GET['id'])){
			//获得文章ID
			$id=$_GET['id'];
			$model=new ArtModel();
			//更新文章浏览量
			$model->updatelook($id);
			//获得文章上一篇
			$last=$model->totalart($id,0);
			//获得文章下一篇
			$next=$model->totalart($id,1);
			//获得文章信息
			$art=$model->find($id);
			//获取侧栏信息
			$model=new CategoryModel();
			$list=$model->getCategoryTree();
			//获得公众信息
			//$model=new HomeModel();
			//$home=$model->find(1);
			require __VIEW__.'article.html';
	}else{
		//header('Location: ' . $_SERVER['HTTP_REFERER']);
		echo"<script>alert('没有下一条记录');history.go(-1);</script>";
		exit;
	}
	}
 }
?>