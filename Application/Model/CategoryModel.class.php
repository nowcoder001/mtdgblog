<?php 
//栏目分类模型
class CategoryModel extends Model{
	/*创建树形结构
	@param $list array 父节点下的分类数组
	@param $parentid int 父节点的id
	@param $deep int 深度
	*/
	private function createTree($list,$parentid=0,$deep=0){
		static $tree=array();
		foreach ($list as $rows) {
			# code...
			if ($rows['parentid']==$parentid) {
				# code...
				$rows['deep']=$deep;
				$tree[]=$rows;
				$this->createTree($list,$rows['id'],$deep+1);
			}
		}
		return $tree;
	}
	//获得栏目分类的树形结构
	public function getCategoryTree($parentid=0){
		$list=$this->select();
		return $this->createTree($list,$parentid);
	}
	//判断一个节点下面是否还存在子节点
	public function isLeaf($id){
		$sql="select count(*) from category where parentid=$id";
		return !$this->db->fetchColumn($sql);
	}
}
?>