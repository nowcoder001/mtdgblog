<?php

class ArtModel extends Model {
//文章模型
	public function updatelook($id){
		$art=$this->find($id);
		$data['id']=$id;
		$data['look']=$art['look']+1;
		$this->update($data);
	}
}