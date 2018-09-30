<?php
//统计点击数量模型
/**
 * @Author: King
 * @Date:   2018-09-21 21:24:11
 * @Last Modified by:   King
 * @Last Modified time: 2018-09-21 23:32:43
 */
class NumModel extends Model {
	//获取点击数量
	public function getnum(){
		//如果数据库没有数据,自动生成
		if(empty($this->count())){
			$data['numall']=0;
			$data['numtod']=0;
			$data['lastday']=time();
			if (!$this->insert($data)) {
			$this->error('index.php?p=Admin&c=Admin&a=new',"新建数据失败,请处理",3);
			exit;
		}
		}
		//返回数组集,注意这里定死了取ID为1的条目
		return $this->find(1);
	}
	//自动更新点击数量
	public function updatanum(){
		//查找以前的数据
		$numold=$this->find(1);
		//更新数量
		$data['id']=1;
		$data['numall']=$numold['numall']+1;//总点击量+!
		//清空今日数量
		$timenow=strtotime(date("y-m-d h:i:s"),time()); //当前时间
		$timeold=strtotime(date("y-m-d h:i:s",$numold['lastday']));
		$daytime=floor(($timenow-$timeold)/86400);
		if ($daytime>=1) {
			# code...
			$data['numtod']=0;//清零
			$data['lastday']=time();//更新时间
		}else
			$data['numtod']=$numold['numtod']+1;//否则就点击次数加1
		//执行更新数量操作
		if(!$this->update($data)){
			echo"<script>alert('抱歉,你遇见了404了哦~给你鼓个掌~');history.go(-1);</script>";
			exit;
		}
		return $data['numall'];//返回总点击量
	}
}