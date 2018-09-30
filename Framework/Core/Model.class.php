<?php
/**
*基础模型类，用来封装所有模型的公共属性和方法
*/
abstract class Model {
	protected $db;	//用来保存MySQLDB的单例
	/**
	*构造函数初始化连接数据库
	*/
	public function __construct() {
		$this->initDB();
	}
	//获取MySQLDBm类的实例
	private function initDB() {
		$this->db=MySQLDB::getInstance($GLOBALS['config']['database']);
	}
	//获得当前对象所属的表名
	private function getTable(){
		return substr(get_class($this), 0,-5);
	}
	//获得主键字段
	private function getPrimaryKey($table){
		$rs=$this->db->query("desc `{$table}`");
		while ($rows=mysql_fetch_assoc($rs)) {
			# code...
			if ($rows['Key']=='PRI') {
				# code...
				return $rows['Field'];
			}
		}
	}
	/*
	insert,封装一个万能的insert语句
	@param $data array 返回由字段名和值组成的关联数组
	 */
	public function insert($data){
		//获取所有的键
		$fileds=array_keys($data);
		//获取所有的值
		$values=array_values($data);
		//给fields数组中每个元素添上反引号
		$fileds=array_map(function($fileds){
			return "`{$fileds}`";
		}, $fileds);
		//将字段以逗号隔开
		$fileds_str=implode(',', $fileds);
		//给value数组中每个元素添上反引号
		$values=array_map(function($value){
			return "'{$value}'";
		}, $values);
		//将字段以逗号隔开
		$values_str=implode(',', $values);
		//拼接字符串
		$table=$this->getTable();
		$sql="insert into `{$table}` ({$fileds_str}) values ($values_str)";
		return $this->db->query($sql);
	}
	/*
	update,封装一个万能的update语句
	@param $data array 关联数组
	 */
	public function update($data){
		//获取字段
        $fields=array_keys($data);
        //获取当前表
        $table=$this->getTable();
        //获取表的主键
        $pk=$this->getPrimaryKey($table);
        //去除主键
        $index=array_search($pk,$fields);
        //主键的下标
        //销毁主键
        unset($fields[$index]);
        //遍历循环字段
        $fields=array_map(function($field) use ($data){
                return "`{$field}`='{$data[$field]}'";
        },$fields);
        $fields=implode(',',$fields);
        $sql="update `{$table}` set {$fields} where `{$pk}`=$data[$pk]";
        return $this->db->query($sql);
	}
	/*
	delete,封装一个万能的删除方法
	@param $id mixed 主键字段的值
	 */
	public function del($id){
		$table=$this->getTable();
		$pk=$this->getPrimaryKey($table);
		$sql="delete from `{$table}` where `{$pk}`='$id'";
		return $this->db->query($sql);
	}
	/*
	封装一个万能的查询语句
	@param $field string 排序字段
	@param #order string 排序方法
	asc 降序,从小到大
	desc 升序,从大到小
	 */
	public function select($filed='',$order='asc'){
		$table=$this->getTable();
		$sql="select * from `{$table}`";
		if ($filed!='') {
			# code...
			$sql.=" order by `{$filed}` {$order}";
		}
		return $this->db->fetchAll($sql);
	}
	/*
	封装一个万能的查询语句,通过主键的值查询获得记录
	@param $id mixed 主键的值
	@return array 一维数组
	 */
	public function find($id,$table=''){
		if (empty($table)) {
			# code...
			$table=$this->getTable();
		}
		$pk=$this->getPrimaryKey($table);
		$sql="select * from `{$table}` where `{$pk}`='{$id}'";
		return $this->db->fetchRow($sql);
	}
	/*
	封装一个万能的获取当前页面数据方法
	@param $pageno int 当前页码
	@param $pagesize int 页面大小
	 */
	public function getPageList($pageno,$pagesize,$name='',$pid='',$id=''){
		$table=$this->getTable();
		$pk=$this->getPrimaryKey($table);
		$startno=($pageno-1)*$pagesize;
		if ($name=='art') {
			# code...
			$sql="select `{$table}`.*,category.name from `{$table}` left join category on `{$table}`.catid=category.id";
			if (!empty($pid)) {
				# code...
				$sql.=" where category.parentid='$pid'";
			}
			if (!empty($id)) {
				# code...
				$sql.=" and category.id='$id'";
			}
			$sql.="  order by `{$pk}` desc limit $startno,$pagesize";
		}else
		$sql="select * from `{$table}` order by `{$pk}` desc limit  $startno,$pagesize";
		return $this->db->fetchAll($sql);
	}
	/*
	封装一个获取总记录数的方法
	 */
	public function count($pid='',$id=''){
		$table=$this->getTable();
		$sql="select count(*) from `{$table}`";
		//后台项目管理查询
		if($id=='pro'){
			$sql.=" left join category on `{$table}`.catid=category.id where category.parentid='$pid'";
			return $this->db->fetchColumn($sql);
			exit;
		}
		//$id的查找优先级高于$pid
		if(!empty($id)){
			$sql.="where `{$table}`.catid='$id'";
			return $this->db->fetchColumn($sql);
			exit;
		}
		if (!empty($pid)) {
			# code...
			$sql.="where `{$table}`.catid='$pid'";
			return $this->db->fetchColumn($sql);
			exit;
		}
		return $this->db->fetchColumn($sql);
	}
}