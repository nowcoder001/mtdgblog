<?php

/**
 * @Author: King
 * @Date:   2018-09-15 11:41:02
 * @Last Modified by:   King
 * @Last Modified time: 2018-09-15 12:41:15
 */
class LinkModel extends Model {
	/**
	*获取
	*/
	public function getLink() {
		$list=$this->select();
		return $list;
	}
}
