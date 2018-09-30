<?php
/**
 * Created by PhpStorm.
 * User: King
 * Date: 2018/8/18
 * Time: 23:31
 */
class Framework
{
    //run,让程序跑起来
    public static function run(){
        self::initConst();
        self::initConfig();
        self::initError();
        self::initRoutes();
        self::initRegisterAutoLoad();
        self::initDispatch();
    }
    //定义常量
    private static function initConst()
    {
        define('DS', DIRECTORY_SEPARATOR);  //定义目录分隔符
        define('ROOT_PATH', getcwd() . DS);   //根目录
        define('APP_PATH', ROOT_PATH . 'Application' . DS); //Application目录
        define('FRAMEWROK_PATH', ROOT_PATH . 'Framework' . DS); //Framework目录
        define('PUBLIC_PATH', ROOT_PATH . 'Public' . DS);   //Public目录
        define('CONFIG_PATH', APP_PATH . 'Config' . DS);    //Config目录
        define('CONTROLLER_PATH', APP_PATH . 'Controller' . DS);    //Controller目录
        define('MODEL_PATH', APP_PATH . 'Model' . DS);  //Model目录
        define('VIEW_PATH', APP_PATH . 'View' . DS);    //View目录
        define('CORE_PATH', FRAMEWROK_PATH . 'Core' . DS);  //Core目录
        define('LIB_PATH', FRAMEWROK_PATH . 'Lib' . DS);    //Lib目录
        define('LOG_PATH',APP_PATH.'log'.DS);//日志文件夹
    }

    //导入配置文件
    private static function initConfig(){
        $GLOBALS['config']=require CONFIG_PATH.'config.php';
    }

    //确定路由
    private static function initRoutes(){
        $p=isset($_REQUEST['p'])?$_REQUEST['p']:$GLOBALS['config']['app']['default_platform']; //当前平台名
        $c=isset($_REQUEST['c'])?$_REQUEST['c']:$GLOBALS['config']['app']['default_controller'];//当前控制器名
        $a=isset($_REQUEST['a'])?$_REQUEST['a']:$GLOBALS['config']['app']['default_action'];//当前方法名
        define('PLATFORM_NAME', $p);
        define('CONTROLLER_NAME',  $c);
        define('ACTION_NAME', $a);
        define('__URL__', CONTROLLER_PATH.PLATFORM_NAME.DS); //当前控制器的目录
        define('__VIEW__', VIEW_PATH.PLATFORM_NAME.DS);        //当前平台的目录
    }
    //自定义自动加载类
    private static function autoLoad($class_name){
        $class_may=array(
            'MySQLDB'=>CORE_PATH.'MySQLDB.class.php',
            'Model'=>CORE_PATH.'Model.class.php',
            'Controller'=>CORE_PATH.'Controller.class.php'
        );
        if(isset($class_may[$class_name])){
            require $class_may[$class_name];
        }
        elseif(substr($class_name, -5)=='Model'){
            require MODEL_PATH.$class_name.'.class.php';
        }
        elseif(substr($class_name, -10)=='Controller'){
            require __URL__.$class_name.'.class.php';
        }
        elseif(substr($class_name,-3)=='Lib'){
            require LIB_PATH.$class_name.'.class.php';
        }
    }

    //注册自定义加载类函数
    private static function initRegisterAutoLoad(){
        spl_autoload_register('self::autoLoad');
    }
    //请求分发
    private static function initDispatch(){
        $controller_name=CONTROLLER_NAME.'Controller';  //拼接控制器名
        $action_name=ACTION_NAME.'Action';          //拼接方法名
        $controller=new $controller_name(); //实例化控制器
        $controller->$action_name();        //调用方法
    }
    //定义初始化显示出错方式
    private static function initError(){
        ini_set('error_reporting', E_ALL|E_STRICT);//报所有错误
        if ($GLOBALS['config']['app']['app_debug']) {//开发模式
            # code...
            ini_set('display_errors','on');//在浏览器上显示
            ini_set('log_errors','off');//关闭日志功能
        }else{
            ini_set('display_errors','off');//在浏览器上不显示
            ini_set('log_errors','on');//打开日志功能
            ini_set('error_log',LOG_PATH.'error_log');//日志地址
        }
    }
}