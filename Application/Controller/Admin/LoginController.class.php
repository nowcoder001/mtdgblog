<?php 
// 登录的控制器
class LoginController extends Controller{
	//连接登录页面
	public function loginAction(){
		//调用模型，进行逻辑处理
		$model=new AdminModel();
		//登录业务处理
		if (!empty($_POST)){
			# code...
			//先判断验证码是否正确
			$captcha=new CatchaLib();
			$code=$_POST['code'];
			if (!$captcha->checkCaptcha($code)) {
				# code...
				$this->error('index.php?p=Admin&c=Login&a=login','验证码错误',1);
				exit;
			}
			//获取用户名和密码
			$username=$_POST['username'];
			$pwd=$_POST['password'];
			$info=$model->getAdminByUserNameAndPwd($username,$pwd);
			//对处理结果进行判断
			if ($info) {
				# code...
				//----------------记住登陆-----------
				if (isset($_POST['remember'])) {
					# code...
					setcookie('id',$info['id'],PHP_INT_MAX);
					setcookie('pwd',md5($info['name'].$info['pwd'].$GLOBALS['config']['app']['key']),PHP_INT_MAX);

				}
				//----------------结束---------------
				//给个令牌，防止翻墙
				$_SESSION['admin']=$info;
				// $GLOBALS['login']='true';
				//setcookie('admin',$info['name']);
				//更新用户登录信息
				$model->updateLoginInfo();
				//var_dump($_SESSION['admin']);exit;
				$this->success('index.php?p=Admin&c=Admin&a=admin','登陆成功',1);
			}
			else{
				$this->error('index.php?p=Admin&c=Login&a=login','登陆失败');
			}
			exit;
		}
		if ($info=$model->getAdminByCookie()) {
			# code...
			//给个令牌，防止翻墙
			$_SESSION['admin']=$info;
			// $GLOBALS['login']='true';
			//setcookie('admin',$info['name']);
			//更新用户登录信息
			$model->updateLoginInfo();
			$this->success('index.php?p=Admin&c=Admin&a=admin');
			exit;
		}
		require __VIEW__.'login.html';
	}
	//安全退出
	public function lagoutAction(){
		//销毁登录凭证
		session_destroy();
		//退出就清除cookie，否则可以翻墙进入管理系统
		setcookie('id',false);
		setcookie('pwd',false);
		// unset($GLOBALS['login']); 
		//setcookie('admin',false);
		//跳转回登录页面
		$this->success("index.php?p=Admin&c=Login&a=login");
	}
	// 获取验证码
	public function generalCaptchaAction(){
		//长度为4，字体大小为5
		$captcha=new CatchaLib(4,5);
		$captcha->generalCaptcha();
	}
}
?>