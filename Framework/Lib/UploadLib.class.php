<?php
//封装上传文件类
class UploadLib{
	private $path;//文件上传路径
	private $type;//文件上传类别
	private $size;//文件上传大小
	private $error;//文件上传过程产生的错误
	//通过构造函数初始化成员变量
	public function __construct(){
		$this->path=$GLOBALS['config']['app']['upload_path'];
		$this->type=$GLOBALS['config']['app']['upload_type'];
		$this->size=$GLOBALS['config']['app']['upload_size'];
	}
	//获得错误
	public function getError(){
		return $this->error;
	}
	/*
	文件上传类
	@param $file $_FILES 对象
	*/
	public function upload($file){
		//var_dump($file);exit;
		$error=$file['error'];
		//判断错误类型
		if ($error) {
			# code...
			switch ($error) {
				case 1:
				# code...
				$this->error='上传的文件大小超过了配置文件中允许的最大值';
				return false;
				case 2:
				# code...
				$this->error='上传文件大小超过了表单允许的最大值';
				return false;
				case 3:
				# code...
				$this->error='文件没有上传完整';
				return false;
				case 4:
				# code...
				$this->error='没有上传文件';
				return false;
				case 6:
				# code...
				$this->error='找不到临时文件';
				return false;
				case 7:
				# code...
				$this->error='文间写入失败';
				return false;
				default:
					# code...
				$this->error='未知错误';
				return false;
			}
		}
		//验证格式
		if (!in_array($file['type'], $this->type)) {
			# code...
			$this->error='类型不正确,只能是'.implode(',',$this->type);
			return false;
		}
		//验证大小
		if ($file['size']>$this->size) {
			# code...
			$this->error='文件不能超过'.($this->size/1024).'K';
			return false;
		}
		//判断上传是否是http上传
		if (!is_uploaded_file($file['tmp_name'])) {
			# code...
			$this->error='文件必须是HTTP上传';
			return false;
		}
		//创建文件夹
		$foldername=date('Y-m-d');//文件夹名称
		$folderpath=$this->path.DS.$foldername;//文件夹路径
		if (!file_exists($folderpath)) {
			# code...
			//没有文件夹就创建
			mkdir($folderpath);
		}
		//文件上传
		$filename=uniqid('',true).strrchr($file['name'],'.');//文件名称
		$filepath=$folderpath.DS.$filename;//文件路径
		if (move_uploaded_file($file['tmp_name'],$filepath)) {
			# code...
			return "{$foldername}/{$filename}";
		}else{
			$this->error='上传失败';
			return false;
		}
	}

}