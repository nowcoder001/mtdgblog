<?php
/**
 * Created by PhpStorm.
 * User: King
 * Date: 2018/8/18
 * Time: 22:38
 */
//配置文件,必有return
return array(
    //数据库配置信息
       'database'=>array(
        'host'	=>	'127.0.0.1',
        'user'	=>	'root',
        'pwd'	=>	'',
        'dbname'=>	'product'
         ),
    //应用程序的配置信息
        'app'=>array(
            'default_platform'=>'Home',
            'default_controller'=>'Home',
            'default_action'=>'home',
            'key'=>'fangzhijie',
            'upload_path'=>'./Public/uploads/',
            'upload_type'=>array('image/jpeg','image/png','image/gif'),
            'upload_size'=>10000000,
            'pagesize'=>10,
            'app_debug'=>false//true表示开发模式,false表示运行模式
        )
);