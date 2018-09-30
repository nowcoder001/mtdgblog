<?php
/**
 * 案例管理
*控制器必须以Controller结尾(控制器名+Controller)
*方法名必须以Action结尾 （方法名+Action）
*/
class ProductController extends Controller{
	//获取商品的所有数据
	public function prolistAction() {
		$model=new ArtModel();
		//注意,12代表分类:项目实战的ID,如果ID改变这里也要改变,待改善
		$pid=12;
		//获取分页信息
		$pagesize=$GLOBALS['config']['app']['pagesize'];// 页面大小,显示的条数
		$count=$model->count($pid,'pro');//总记录数
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
		$list=$model->getPageList($pageno,$pagesize,'art',$pid);
		// var_dump($list);exit;
		require __VIEW__.'product_list.html';
	}
}
