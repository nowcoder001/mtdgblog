<?php 
class AdminModel extends Model{
	/*
	通过帐号密码获取用户信息
	@param $username string 用户名
	@param $pwd string 密码
	@return array 用户信息
	 */
	public function getAdminByUserNameAndPwd($username,$pwd){
		//防止SQL注入,给单引号加转义字符\
		$username=mysql_real_escape_string($username);
		//进行md5加密
		$pwd=md5($pwd);
		$sql="select * from user where name='$username' and pwd='$pwd'";
		return $this->db->fetchRow($sql);
	}
	//登陆逻辑处理程序
	public function updateLoginInfo(){
		static $realip=NULL;
		//获取客户端的IP地址
		if($realip!==NULL){
			$ip=$realip;
		}else{
			if(getenv('HTTP_X_FORWARDED_FOR')){
				$realip=getenv('HTTP_X_FORWARDED_FOR');
			}else if(getenv('HTTP_CLIENT_IP')){
				$realip=getenv('HTTP_CLIENT_IP');
			}else if(getenv('REMOTE_ADDR')){
				$realip=getenv('REMOTE_ADDR');
			}
			$ip=$realip;
		}
		//$_SERVER['REMOTE_ADDR']
		$ip=ip2long($ip);
		//待处理异常
		$ip=empty($ip)?'400':$ip;
		$time=time();
		$id=$_SESSION['admin']['id'];
		$sql="update user set last_login_ip='$ip',last_login_time='$time' where id=$id";
		return $this->db->query($sql);
	}
	//如果记住密码，直接登录功能，通过COOKIE获取用户信息
	public function getAdminByCookie(){
		//如果从登陆页面来才可以获取cookie，否则不给
			if (!isset($_COOKIE['id'])||!isset($_COOKIE['pwd'])||isset($_SERVER['HTTP_REFERER'])) {
				# code...
				return false;
			}
		$id=mysql_real_escape_string($_COOKIE['id']);
		$pwd=$_COOKIE['pwd'];
		$sql="select * from user where id=$id";
		if ($info=$this->db->fetchRow($sql)) {
			# code...
			return md5($info['name'].$info['pwd'].$GLOBALS['config']['app']['key'])==$pwd?$info:false;
		}
		return false;
	}
}
?>