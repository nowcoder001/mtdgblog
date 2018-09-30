<?php

/**
 * @Author: King
 * @Date:   2018-08-23 16:21:04
 * @Last Modified by:   King
 * @Last Modified time: 2018-08-23 17:01:00
 */
/*
@param $length int 验证码长度
@param $font int 内置字体大小1-5
 */
class CatchaLib{
	private $length;//验证码长度
	private $font=5;//内置字体大小1-5
	//通过构造函数赋值
	public function __construct($length=4,$font=5){
		$this->length=$length;
		$this->font=$font;
	}
	//生成随机字符串
	private function generalCode(){
		//生成一个文字大小写字母的可用数组
		$char_array=array_merge(range('A','Z'),range('a','z'),range(0,9));
		//随机取4个字符,返回数组集合
		$index=array_rand($char_array,$this->length);
		//随即打乱数组
		shuffle($index);
		//拼接字符串
		$str='';
		foreach ($index as $i) {
			# code...
			$str.=$char_array[$i];
		}
		return $str;
	}
	//生成验证码
	public function generalCaptcha(){
		$str=$this->generalCode();
		//将验证码存储到session中
		$_SESSION['code']=$str;
		//背景图地址
		$bg_path=PUBLIC_PATH.'images'.DS.'captcha'.DS.'captcha_bg'.rand(1,5).'.jpg';
		//打开图片
		$img=imagecreatefromjpeg($bg_path);
		//定义前景色
		$color=imagecolorallocate($img,0,0,0);
		if (rand(1,2)==2){
			# code...
			$color=imagecolorallocate($img,255,255,255);
		}
		//将字符串写到图片上
		//X轴,(背景欢度-验证码字符串宽度)/2
		$x=(imagesx($img)-imagefontwidth($this->font)*strlen($str))/2;
		//Y轴,(背景图的高度-验证码字符的高度)/2
		$y=(imagesy($img)-imagefontheight($this->font))/2;

		imagestring($img,$this->font,$x,$y,$str,$color);
		//清空缓存
		ob_clean();
		header('content-type:image/png');
		imagepng($img);
		imagedestroy($img);
		//return $img;
	}
	//检验验证码是否正确，不区分大小写
	public function checkCaptcha($code){
		return strtolower($code)==strtolower($_SESSION['code']);
	}
}