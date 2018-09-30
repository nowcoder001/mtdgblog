<?php
//用户管理页面控制器
class UserController extends Controller{
	//列表
	public function userlistAction(){
		$model=new UserModel();
		$list=$model->select();
		//var_dump($list);exit;
		require __VIEW__.'user_list.html';
	}
	//添加
	public function useraddAction(){
		if (!empty($_POST)) {
			# code...
			$model=new UserModel();
			$data['name']=$_POST['name'];
			$data['pwd']=md5($_POST['pwd']);
			$data['last_login_ip']=400;
			$data['last_login_time']=time();
			if($model->insert($data)){
				$this->success('index.php?p=Admin&c=User&a=userlist','增加用户成功',2);
			}else{
				$this->error('index.php?p=Admin&c=User&a=userlist','增加用户失败',3);
			}
		}
		require __VIEW__.'user_add.html';
	}
	//修改
	public function usereditAction(){
		$id=$_GET['id'];
		$model=new UserModel();
		if (!empty($_POST)) {
			# code...
			$model=new UserModel();
			$data['id']=$id;
			$data['name']=$_POST['name'];
			$data['pwd']=md5($_POST['pwd']);
			$data['last_login_ip']=400;
			$data['last_login_time']=time();
			if($model->update($data)){
				$this->success('index.php?p=Admin&c=User&a=userlist','修改用户成功',2);
			}else{
				$this->error('index.php?p=Admin&c=User&a=userlist','修改用户失败',3);
			}
		}
		$info=$model->find($id);
		require __VIEW__.'user_edit.html';
	}
	//删除
	public function userdelAction(){
		if(!empty($_GET)){
			# code...
			$model=new UserModel();
			$id=$_GET['id'];
			if($model->del($id)){
				$this->success('index.php?p=Admin&c=User&a=userlist','成功删除用户',1);
			}else{
				$this->error('index.php?p=Admin&c=User&a=userlist','删除用户失败',3);
			}
		}else
		$this->error('index.php?p=Admin&c=User&a=userlist','获取用户ID失败',2);
	}
}
?>