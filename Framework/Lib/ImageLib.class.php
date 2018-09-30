<?php
//封装image类
class ImageLib{
	private $error;
	public function getError(){
		return $this->error;
	}
	/*
	制作缩略图
	@param $src_path string 原图路径
	@param $max_w int 画布宽度
	@param $max_h int 画布高度
	@param $flag bool 是否等比
	@param $prefix string 缩略图前缀
	*/
	public function thumb($src_path,$max_w,$max_h,$prefix='s_',$flag=false){
		//获取文件后缀
		$ext=strtolower(strrchr($src_path, '.'));
		switch ($ext) {
			case '.jpg':
				# code...
			$type='jpeg';
			break;
			case '.gif':
				# code...
			$type='gif';
			break;
			case '.png':
				# code...
			$type='png';
			break;
			default:
				# code...
			$this->error='文件格式不正确';
			break;
		}
		//拼接打开图片的函数
		$open_fn='imagecreatefrom'.$type;
		//打开原图
		$src=$open_fn($src_path);
		//创建目标图
		$dst=imagecreatetruecolor($max_w,$max_h);
		//获得原图高度
		$src_w=imagesx($src);
		//获得原图宽度
		$src_h=imagesy($src);
		//等比缩放
		if ($flag) {
			# code...
			if ($max_w/$max_h<$src_w/$src_h) {
				# code...
				$dst_w=$max_w;
				$dst_h=$max_w*$src_h/$src_w;
			}else{
				$dst_h=$max_h;
				$det_w=$max_w*$src_w/$src_h;
			}
			//在目标图上显示位置
			$des_x=(int)(($max_w-$des_x)/2);
			$des_y=(int)(($max_h-$des_h)/2);
		}else{
			//不等比
			$dst_x=0;
			$dst_y=0;
			$dst_w=$max_w;
			$dst_h=$max_h;
		}
		//生成缩略图
		imagecopyresampled($dst,$src, $dst_x, $dst_y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
		//文件名
		$filename=basename($src_path);
		//文件夹名称
		$foldername=substr(dirname($src_path),-10);
		$thumb_path=$GLOBALS['config']['app']['upload_path'].$foldername.DS.$prefix.$filename;
		imagepng($dst,$thumb_path);
		imagedestroy($dst);
		imagedestroy($src);
		return $foldername.'/'.$prefix.$filename;
	}
}