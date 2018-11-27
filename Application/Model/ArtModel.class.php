<?php

class ArtModel extends Model {
//文章模型
	public function updatelook($id){
		$art=$this->find($id);
		$data['id']=$id;
		$data['look']=$art['look']+1;
		$this->update($data);
	}
	/*获得上下篇文章标题和链接
	@param $id 已知的文章id
	@param 0,1 已知的要获取的类型，0表示上一篇，1表示下一篇
	@return 返回查询的一行信息
	*/
	public function totalart($id,$type){
		if ($type===0) {
			//上一篇，desc
			$sql="select * from art where id<$id order by id desc";
			return $this->db->fetchRow($sql);
		}else{
			$sql="select * from art where id>$id order by id asc";
			return $this->db->fetchRow($sql);
		}
	}
}