<?php 
//管理页面后台主页
class AdminController extends Controller{
	//后台管理主页面
	public function adminAction(){
		require __VIEW__.'admin.html';
	}
 }
?>