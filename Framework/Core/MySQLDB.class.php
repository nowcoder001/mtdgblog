<?php
class MySQLDB {
	private $host;	//主机IP
	private $port;	//端口号
	private $user;	//用户名
	private $pwd;	//密码
	private $charset;	//字符编码
	private $dbname;	//连接的数据库
	private $link;		//保存数据库连接对象【可以省略】
	private static $instance;	//保存MySQLDB的实例

	//初始化连接数据库参数
	private function initParam($config) {
		$this->host=isset($config['host'])?$config['host']:'';
		$this->port=isset($config['port'])?$config['port']:'3306';
		$this->user=isset($config['user'])?$config['user']:'';
		$this->pwd=isset($config['pwd'])?$config['pwd']:'';
		$this->charset=isset($config['charset'])?$config['charset']:'utf8';
		$this->dbname=isset($config['dbname'])?$config['dbname']:'';
	}
	//连接数据库
	private function connect() {
		$this->link=mysqli_connect("{$this->host}:{$this->port}",$this->user,$this->pwd,$this->dbname) or die('数据库连接失败');
	}
	//设置字符编码
	private function setCharset() {
		$sql="set names '{$this->charset}'";
		$this->query($sql);
	}
	//选择数据库
	private function selectDB() {
		$sql="use `{$this->dbname}`";
		$this->query($sql);
	}
	/**
	 * 记录执行的SQL语句以及出错信息
	 * @param   $log 记录的信息
	 */
	function mLog($log){
		$path=LOG_PATH.date("Ymd",time()).'.txt';
		$head='--------------------------------------'."\n".date('Y/m/d H:i:s',time())."\n";
		file_put_contents($path, $head.$log."\n"."\n",FILE_APPEND);
	}
	/**
	*此方法用来执行SQL语句
	*如果是数据查询语句，成功返回结果集，失败返回false
	*如果是数据操作语句，成功返回true,失败返回false;
	*/
	public function query($sql) {
		if(!$result=mysqli_query($this->link,$sql)){
			//mLog($sql."\n".mysql_error());
			if($GLOBALS['config']['app']['app_debug']){//开发模式
				echo 'SQL语句执行失败<br>';
				echo '错误编号：'.mysqli_errno(),'<br>';
				echo '错误信息：'.mysqli_error(),'<br>';
				echo '错误的SQL语句',$sql,'<br>';
				exit;
			}
			echo "发生未知错误,请开启开发模式调试";
			exit;
		}
		//mLog($sql);
		return $result;
	}
	/**
	*私有的构造函数防止在类的外部实例化对象
	*@param $config array 连接数据库的参数
	*/
	private function __construct($config) {
		$this->initParam($config);
		$this->connect();
		$this->setCharset();
		$this->selectDB();
		
	}
	//私有的__clone()用来阻止是类的外部克隆对象
	private function __clone() {
		
	}
	/**
	*公有的静态方法用来获取MySQLDB类的实例
	*@return object MySQLDB的实例
	*/
	public static function getInstance($config=array()) {
		if(!self::$instance instanceof self)
			self::$instance=new self($config);
		return self::$instance;
	}
	/**
	*从数据库获取所有数据
	*@param $sql string SQL语句
	*@param $fetch_type string assoc|row|array
	*@return array 将表中的数据匹配成二维数组返回
	*/
	public function fetchAll($sql,$fetch_type='assoc') {
		$rs=$this->query($sql);
		$fetch_types=array('assoc','row','array');
		if(!in_array($fetch_type,$fetch_types))
			$fetch_type='assoc';
		$fetch_fun='mysqli_fetch_'.$fetch_type;
		$array=array();
		while($rows=$fetch_fun($rs)){
			$array[]=$rows;
		}
		return $array;
	}
	/**
	*获取记录的第一条记录
	*/
	public function fetchRow($sql,$fetch_type='assoc') {
		$rs=$this->fetchAll($sql,$fetch_type);
		return empty($rs)?null:$rs[0];
	}
	/**
	*获取记录的第一行第一列
	*/
	public function fetchColumn($sql) {
		$rs=$this->fetchRow($sql,'row');
		return empty($rs)?null:$rs[0];
	}
}

