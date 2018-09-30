<?php

/**
 * @Author: King
 * @Date:   2018-08-21 12:46:59
 * @Last Modified by:   King
 * @Last Modified time: 2018-08-21 13:14:33
 */
//session入库工具类
class SessionLib{
	private $db;
	public function __construct(){
		session_set_save_handler(
		array($this,'open'),
		array($this,'close'),
		array($this,'read'),
		array($this,'write'),
		array($this,'destory'),
		array($this,'gc')
	);
	}//打开会话
	function open(){
		// echo 'open<br>';
		$this->db=MySQLDB::getInstance($GLOBALS['config']['database']);
	}
	//关闭会话
	function close(){
		// echo 'close<br>';
		return true;
	}
	//读取会话
	// @param $sess_id 会话编号
	function read($sess_id){
		// echo 'read<br>';
		$sql="select sess_value from sess where sess_id='$sess_id'";
		return $this->db->fetchColumn($sql);
	}
	//写入会话
	function write($sess_id,$sess_value){
		// echo "write<br>";
		$time=time();
		$sql="insert into sess values ('$sess_id','$sess_value',$time) on duplicate key update sess_value='$sess_value'";
		return $this->db->query($sql);
	}
	//销毁会话
	function destory($sess_id){
		// echo "destroy<br>";
		$sql="delete from sess where sess_id='$sess_id'";
		return $this->db->query($sql);
	}
	//垃圾回收
	function gc($maxfiletime){
		// echo 'gc';
		$time=time()-$maxfiletime;
		$sql="delete from sess where sess_expires<$time";
		return $this->dn->query($sql);
	}
}