<?php
/**
 * Created by PhpStorm.
 * User: King
 * Date: 2018/8/18
 * Time: 23:19
 */
class Controller
{
    public function __construct(){
        // 初始化session入库
        $this->initSession();
        //检查令牌
        $this->checkLogin();
        //调整时区
        $this->settime();
    }
    //调整时间为北京时间
    public function settime(){
        date_default_timezone_set("PRC");
    }
    //调用session入库工具类
    public function initSession(){
        new SessionLib();
        @session_start();
    }
    //判断是否拥有登录令牌
    private function checkLogin(){
        //var_dump($_SESSION['admin']);exit;
        if (strtolower(CONTROLLER_NAME)=='login'||strtolower(PLATFORM_NAME)=='home')
            return;
           if (empty($_SESSION['admin'])) {
                # code...
               header('location:index.php?p=Admin&c=Login&a=login');
                exit;
            }
    }
    /*成功跳转方法
    @param $url string 跳转的地址
    @param $msg string 显示信息,如果是空,就直接跳转
    @param $time int 页面停留时间*/
    public function success($url, $msg = '', $time = 3)
    {
        $this->jump($url, $msg, $time, true);
    }

    /*失败跳转方法
    @param $url string 跳转的地址
    @param $msg string 显示信息,如果是空,就直接跳转
    @param $time int 页面停留时间*/
    public function error($url, $msg = '', $time = 3)
    {
        $this->jump($url, $msg, $time, false);
    }

    //跳转的方法
    public function jump($url, $msg, $time = 3, $flag = true)
    {
        if ($msg!='') {
            if ($flag){
                $path = '<img src="/Public/images/success.jpg" width="200px" height="200px"/>';
            }
            else{
                $path = '<img src="/Public/images/error.jpg" width="200px" height="200px"/>';
            }
            require VIEW_PATH.PLATFORM_NAME.DS.'jump.html';
            exit;
        } else {
            header("location:{$url}");
            exit;
        }
        
    }
}