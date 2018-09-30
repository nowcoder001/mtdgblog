-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-30 05:21:21
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- 表的结构 `art`
--

CREATE TABLE `art` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id',
  `catid` int(11) NOT NULL COMMENT '文章归属栏目',
  `title` varchar(250) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `pubtime` int(11) NOT NULL COMMENT '上传时间',
  `lastup` int(11) NOT NULL COMMENT '最后修改时间',
  `comm` int(11) NOT NULL COMMENT '评论数量',
  `look` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(250) NOT NULL COMMENT '文章标签',
  `pic` text NOT NULL COMMENT '缩略图地址',
  `pic_sm` text NOT NULL COMMENT '缩略小图地址',
  `pic_mid` text NOT NULL COMMENT '缩略中图地址',
  `link` text COMMENT ' 超链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `art`
--

INSERT INTO `art` (`id`, `catid`, `title`, `content`, `pubtime`, `lastup`, `comm`, `look`, `tag`, `pic`, `pic_sm`, `pic_mid`, `link`) VALUES
(1, 19, '01-博客项目实战开发', '<p style="text-align: left;"><span style="font-family: 宋体, SimSun; font-size: 16px;">嘿~关注我的朋友们，你们好，经过一个多月的改造，杰哥博客再次与大家见面啦~</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">以前的博客是刚开始学php时候搭建的，没有用到MVC去设计，前端使用了较老的布局方式（类似微博），本次更新，<span style="font-size: 16px; font-family: arial, helvetica, sans-serif;">杰哥借鉴了慕课网的教学内容，采取了扁平化风格，自己设计增加了几个页面，并完善了部分布局，比较可惜的是还是没来得及实现响应式，但我会逐</span></span><span style="font-family: 宋体, SimSun; font-size: 16px;"></span><span style="font-family: 宋体, SimSun; font-size: 16px;"><span style="font-size: 16px; font-family: arial, helvetica, sans-serif;">步完善的，后端使用的是原生MVC框架，</span>我会将以前的笔记逐步转移到这里来的,umm....秉着开源精神，我会把这次更新的博客作为一个项目实战分享给大家,希望能够一步一步和大家一起完善它，毕竟我觉得能够改善的地方还有很多很多滴~，部分地方有实现的想法的却没有付出行动去实现~总之,杰哥感谢大家对我的的支持和鼓励,让我们一起加油~</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;"><br/></span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">前端的教程链接：</span></p><p style="text-align: left;"><span style="font-family: 宋体, SimSun; font-size: 16px;">HTML5和CSS3扁平化风格博客</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><a href="https://www.imooc.com/learn/445" style="text-decoration: underline; font-family: 宋体, SimSun; font-size: 16px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">https://www.imooc.com/learn/445</span></a></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">CSS3扁平化博客之文章页及常用组件</span></p><p style="text-align: left;"><a href="https://www.imooc.com/learn/598" style="text-decoration: underline; font-family: 宋体, SimSun; font-size: 16px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">https://www.imooc.com/learn/598</span></a></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><br/></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">我在教程的基础上增加了两个分类页面（正常流和伪瀑布流），并对教程的一些CSS样式进行了修改和完善，教程的样式就只是为了实现而实现，没有考虑实际运用的一些问题，我处理了一下，但可能还会有一些错误，期待你来修改~</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><br/></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">项目Github分享连接：</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><br/></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">文章目录，跟着杰哥从零搭建博客系统：（持续更新中）</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">1.</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">2.</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><span style="font-family: 宋体, SimSun; font-size: 16px;">3.</span></p><p style="text-align: left; line-height: 1.5em; margin-top: 5px; margin-bottom: 5px;"><br/></p>', 1536504893, 1538283344, 0, 34, '博客项目，原生MVC框架', '2018-09-26/5baa61c34c1945.30131443.jpg', '2018-09-26/sm_5baa61c34c1945.30131443.jpg', '2018-09-26/mid_5baa61c34c1945.30131443.jpg', NULL),
(5, 14, '关于自学的一些个人建议', '<p><span style="font-size: 16px; font-family: 宋体, SimSun;">&nbsp; 很多学习前后端的同学，包括以前的我自己不是很明白学习前后端到了什么阶段？而下一阶段需要掌握什么技术？</span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">&nbsp; 有人认为</span><span style="font-size: 16px; font-family: Calibri;">php</span><span style="font-size: 16px; font-family: 宋体;">就是做网站的，有人认为前端就学好</span><span style="font-size: 16px; font-family: Calibri;">html+css+js</span><span style="font-size: 16px; font-family: 宋体;">就好了，其实这是不对的思想，殊不知每一种语言都是博大精深的，包括</span><span style="font-size: 16px; font-family: Calibri;">php</span><span style="font-size: 16px; font-family: 宋体;">也不例外，你可能听说学</span><span style="font-size: 16px; font-family: Calibri;">php</span><span style="font-size: 16px; font-family: 宋体;">很好学，就跑去学习，能够开发一些简单网站，就以为学会了，其实这只不过是你对技术栈没有深一步的了解罢了，你学的不过是一些皮毛。</span></span></p><p><span style="font-family: 宋体, SimSun;"><span style="font-family: Calibri; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-family: 宋体;">可以说，</span><span style="font-family: Calibri;">php</span><span style="font-family: 宋体;">只是后台数据处理的一种工具，</span><span style="font-family: Calibri;">html+css+js</span><span style="font-family: 宋体;">只不过是前端的基础，你要学的东西还有很多很多，下面杰哥为大家列出我学习各个方向的成长树，大家可以参考学习，</span></span><strong><span style="font-family: 宋体;">但每个人的学习道路和方法都不一样，如有不妥，敬请理解。</span></strong></span></p><p><span style="font-family: 宋体, SimSun;"><strong><span style="font-family: 宋体;"><br/></span></strong></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; web<span style="font-size: 16px; font-family: 宋体;">基本分为：前端页、后端页、数据库、服务器（一般是</span><span style="font-size: 16px; font-family: Calibri;">Linux</span><span style="font-size: 16px; font-family: 宋体;">）</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-family: 宋体, SimSun;"><strong><span style="font-family: 宋体;">前端成长树</span></strong></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">初级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">html/html5<span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">css/css3</span><span style="font-size: 16px; font-family: 宋体;">、常见布局、仿</span><span style="font-size: 16px; font-family: Calibri;">PC/</span><span style="font-size: 16px; font-family: 宋体;">移动端网页、</span><span style="font-size: 16px; font-family: Calibri;">js</span><span style="font-size: 16px; font-family: 宋体;">等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">中级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">jq<span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">git</span><span style="font-size: 16px; font-family: 宋体;">版本控制、响应式布局、性能意识、代码规范等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">高级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">框架（</span>vue.js/react/Angular<span style="font-size: 16px; font-family: 宋体;">等）、</span><span style="font-size: 16px; font-family: Calibri;">ECMAScript6</span><span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">NPM</span><span style="font-size: 16px; font-family: 宋体;">、了解</span><span style="font-size: 16px; font-family: Calibri;">Gulp</span><span style="font-size: 16px; font-family: 宋体;">和</span><span style="font-size: 16px; font-family: Calibri;">Webpack</span><span style="font-size: 16px; font-family: 宋体;">工具、了解</span><span style="font-size: 16px; font-family: Calibri;">CanvasAPI</span><span style="font-size: 16px; font-family: 宋体;">使用等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">建议</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">学用</span>Markdown<span style="font-size: 16px; font-family: 宋体;">写项目说明书</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">用</span>Visual studio code<span style="font-size: 16px; font-family: 宋体;">写</span><span style="font-size: 16px; font-family: Calibri;">JS</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">用</span>Sublime text3<span style="font-size: 16px; font-family: 宋体;">写</span><span style="font-size: 16px; font-family: Calibri;">html</span><span style="font-size: 16px; font-family: 宋体;">和</span><span style="font-size: 16px; font-family: Calibri;">css</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">用</span>chrome<span style="font-size: 16px; font-family: 宋体;">进行前端调试</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">额外学习语言</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">后端语言</span>php/java<span style="font-size: 16px; font-family: 宋体;">等，不理解后端的前端不是一个好前端，起码后端的基础知识和逻辑要懂</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">实战项目</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">实现一个简单的</span>TodoList</span></p><p style="text-align: center;"><span style="font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体, SimSun;">仿京东、淘宝等</span><span style="font-family: Calibri; font-size: 16px;"><br/></span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-family: 宋体, SimSun;"><strong><span style="font-family: &quot;Times New Roman&quot;;">php<span style="font-family: 宋体;">成长树</span></span></strong></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">初级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">php<span style="font-size: 16px; font-family: 宋体;">语法基础、</span><span style="font-size: 16px; font-family: Calibri;">html+css+js</span><span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">mysql</span><span style="font-size: 16px; font-family: 宋体;">基础、</span><span style="font-size: 16px; font-family: Calibri;">Linux</span><span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">MVC</span><span style="font-size: 16px; font-family: 宋体;">等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">中级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-family: 宋体, SimSun;"><span style="font-family: Calibri; font-size: 16px;"><span style="font-family: 宋体;">框架（</span>tp/codelgniter/lavavel/symfony/yii<span style="font-family: 宋体;">等）、</span><span style="font-family: Calibri;">jq</span><span style="font-family: 宋体;">、</span><span style="font-family: Calibri;">memcached/redis/mongodb</span><span style="font-family: 宋体;">、</span><span style="font-family: Calibri;">Nginx</span><span style="font-family: 宋体;">等</span></span><span style="font-family: Calibri;">&nbsp;</span></span></p><p><span style="font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">高级</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">SVN/GIT<span style="font-size: 16px; font-family: 宋体;">版本控制、页面静态技术、</span><span style="font-size: 16px; font-family: Calibri;">RESTful</span><span style="font-size: 16px; font-family: 宋体;">的</span><span style="font-size: 16px; font-family: Calibri;">API</span><span style="font-size: 16px; font-family: 宋体;">、数据优化等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">额外学习语言</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">Go<span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">docker</span><span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">python</span><span style="font-size: 16px; font-family: 宋体;">等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">实战小项目</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">开发注册登录与邮件验证</span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">用</span>Ajax<span style="font-size: 16px; font-family: 宋体;">上传图片</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">PDO<span style="font-size: 16px; font-family: 宋体;">数据库开发</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">Ajax<span style="font-size: 16px; font-family: 宋体;">注册与验证等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">##<span style="font-size: 16px; font-family: 宋体;">实战大项目</span><span style="font-size: 16px; font-family: Calibri;">##</span></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">内容管理系统</span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">克隆</span>Twitter</span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">从零开发</span>MVC<span style="font-size: 16px; font-family: 宋体;">框架</span></span></p><p style="text-align: center;"><span style="font-size: 16px; font-family: 宋体, SimSun;">个人博客<br/></span></p><p style=";text-align:center"><span style="font-size: 16px; font-family: 宋体, SimSun;">电商系统等</span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><br/></span></p><p><span style="font-family: 宋体, SimSun;"><strong><span style="font-family: &quot;Times New Roman&quot;;"><span style="font-family: 宋体;">额外补充一些杰哥在学习中遇到的不错的网站，大家有需求可以上去看看</span>~</span></strong></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">面试题网站推荐：</span>leetcode<span style="font-size: 16px; font-family: 宋体;">、</span><span style="font-size: 16px; font-family: Calibri;">IT</span><span style="font-size: 16px; font-family: 宋体;">面试网、七月算法、面试宝典网、百面网等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">自学网站推荐：慕课网、实验楼、</span>freecodecamp、php中文网<span style="font-size: 16px; font-family: 宋体;">等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;"><span style="font-size: 16px; font-family: 宋体;">开源托管平台网站推荐：</span>github<span style="font-size: 16px; font-family: 宋体;">、码云</span><span style="font-size: 16px; font-family: Calibri;">gitee</span><span style="font-size: 16px; font-family: 宋体;">等</span></span></p><p><span style="font-size: 16px; font-family: 宋体, SimSun;">一些开源的图标网站推荐：fontawesome、icomoon等</span></p><p><span style="font-family: 宋体, SimSun;"><strong><span style="font-family: &quot;Times New Roman&quot;;"><span style="font-family: 宋体;">最后，以上仅代表个人建议，谢谢大家的支持和鼓励</span>~</span></strong></span></p>', 1537937530, 1538282812, 0, 19, '学习之路，关于进阶', '2018-09-26/5bab107a2ee7f1.43846251.jpg', '2018-09-26/sm_5bab107a2ee7f1.43846251.jpg', '2018-09-26/mid_5bab107a2ee7f1.43846251.jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '类别名称',
  `sort_order` int(11) NOT NULL DEFAULT '50' COMMENT '排序字段',
  `parentid` int(10) UNSIGNED NOT NULL COMMENT '父级id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `parentid`) VALUES
(10, '学习笔记', 50, 0),
(11, '随手练习', 50, 0),
(12, '项目实战', 50, 0),
(14, '杂谈趣事', 50, 10),
(15, '前端笔记', 50, 10),
(16, '前端练习', 50, 11),
(17, '后端练习', 50, 11),
(18, '设计练习', 50, 11),
(19, 'web应用', 50, 12),
(20, '小程序', 50, 12),
(22, '后端笔记', 50, 10),
(23, '设计集', 50, 12),
(24, '设计笔记', 50, 10);

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE `home` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '唯一id',
  `title1` varchar(250) NOT NULL COMMENT '分类页面1标题',
  `content1` varchar(250) NOT NULL COMMENT '分类页面1副标题',
  `title2` varchar(250) NOT NULL COMMENT '分类页面2标题',
  `content2` varchar(250) NOT NULL COMMENT '分类页面2副标题',
  `htitle1` varchar(250) NOT NULL COMMENT '首页第一屏主标题',
  `hcontent1` varchar(250) NOT NULL COMMENT '首页第一屏副标题',
  `hurl1` text NOT NULL COMMENT '首页第一屏了解我超链接',
  `htitle2` varchar(250) NOT NULL COMMENT '青蓝色第二屏标题',
  `hcontent2` text NOT NULL COMMENT '青蓝色第二屏副标题',
  `htitleleft1` varchar(250) NOT NULL COMMENT '三格子左1标题',
  `hmintitleleft1` varchar(250) NOT NULL COMMENT '三格子左1副标题',
  `hcontentleft1` text NOT NULL COMMENT '三格子左1内容',
  `htitleright1` varchar(250) NOT NULL COMMENT '三格子右1标题',
  `hmintitleright1` varchar(250) NOT NULL COMMENT '三格子右1副标题',
  `hcontentright1` text NOT NULL COMMENT '三格子右1内容',
  `htitleleft2` varchar(250) NOT NULL COMMENT '三格子左2标题',
  `hmintitleleft2` varchar(250) NOT NULL COMMENT '三格子左2副标题',
  `hcontentleft2` text NOT NULL COMMENT '三格子左2内容',
  `hpurtitle` varchar(250) NOT NULL COMMENT '紫色第四屏标题',
  `hpurmintitle` varchar(250) NOT NULL COMMENT '紫色第四屏副标题',
  `gifttitle` varchar(250) NOT NULL COMMENT '赞助主标题',
  `giftmintitle` text NOT NULL COMMENT '赞助副标题',
  `pic` text NOT NULL COMMENT '赞助二维码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`id`, `title1`, `content1`, `title2`, `content2`, `htitle1`, `hcontent1`, `hurl1`, `htitle2`, `hcontent2`, `htitleleft1`, `hmintitleleft1`, `hcontentleft1`, `htitleright1`, `hmintitleright1`, `hcontentright1`, `htitleleft2`, `hmintitleleft2`, `hcontentleft2`, `hpurtitle`, `hpurmintitle`, `gifttitle`, `giftmintitle`, `pic`) VALUES
(1, '笔记&练习', '要足够丰盛，才可以和世界平等对望，然后说再见。', '项目实战', '英雄者，胸怀大志，腹有良谋，有包藏宇宙之机，吞吐天地之志也。', '杰哥博客', '用文字记录点滴成长<br>技术，创作，杂谈，无所不欢', 'index.php?p=Home&c=Home&a=list', '自我介绍', '嗨~你好！我是FZ杰哥，立志要成为一名全栈工程师，这是我的个人介绍，我呢？！对html、css、javascript、php的使用不在话下，对jQuery、bootstrap、thinkPHP有过了解，突然间玩着玩着就对Go产生了浓厚的兴趣，考虑下一步将准备进修Go，在web的开发、服务器维护和微信小程序开发上有所心得，曾参与校内工作室就多项项目达成合作，因此对项目的开发流程比较清楚，不幸入了设计坑，从此喜欢上了设计，因此对海报、logo、字体、UI、插画等有所涉及，会用PS、AI等软件，现在在成为一名会设计的全栈工程师的路上越陷越深，介绍就这样子呗~ o(*￣▽￣*)ブ', '业精于勤', '大巧在所不为，大智在所不虑。', '“业精于勤荒于嬉”，精深的业技靠的是勤学、刻苦努力，靠的是争分夺秒的勤学苦练才会有精深的技术。得在认真，失在随便。', '学无止境', '智如目也，能见百步之外而不能自见其睫。', '学习，探索，研究，从不了解到了解，从无知到掌握，到灵活运用，在不断的学习中加深认识。由浅入深，由表及里。', '工匠精神', '独视者谓明，独听者谓聪，能独断者故可以为天下王。', '精益求精，注重细节，追求完美和极致，不惜花费时间精力，孜孜不倦，反复改进产品，把99%提高到99.99%。', '项目实战', '不闻不若闻之，闻之不若见之，见之不若知之，知之不若行之，学至于行而止矣，行之，明也。', '创作不易，喜欢就请我喝杯奶茶吧~', '方寸间，历数世上桑田沧海；时空里，细问人间暑往寒来；是朋友，星移斗转情不改；是知音，天涯海角记心怀。', '#');

-- --------------------------------------------------------

--
-- 表的结构 `link`
--

CREATE TABLE `link` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id',
  `name` varchar(250) NOT NULL COMMENT '链接名称',
  `url` text COMMENT ' 超链接URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `num`
--

CREATE TABLE `num` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id',
  `numall` int(11) NOT NULL COMMENT '总点击数量',
  `numtod` int(11) NOT NULL COMMENT '今日点击数量 ',
  `lastday` int(11) NOT NULL COMMENT '最后修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `num`
--

INSERT INTO `num` (`id`, `numall`, `numtod`, `lastday`) VALUES
(1, 626, 43, 1538239049);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `proID` int(40) NOT NULL,
  `proname` text,
  `proguige` text,
  `proprice` int(40) DEFAULT NULL,
  `proamount` int(40) DEFAULT NULL,
  `proimages` text,
  `proweb` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sess`
--

CREATE TABLE `sess` (
  `sess_id` varchar(32) NOT NULL COMMENT '会话编号',
  `sess_value` text NOT NULL COMMENT '会话的值',
  `sess_expires` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sess`
--

INSERT INTO `sess` (`sess_id`, `sess_value`, `sess_expires`) VALUES
('002p3vhuj9qrtuln1ji93aa9i0', '', 1538237186),
('vr47o67852f97g6hqifd3rjn17', '', 1537774629);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '主键',
  `name` varchar(30) NOT NULL COMMENT '用户名',
  `pwd` char(32) NOT NULL COMMENT '密码 md5加密',
  `last_login_ip` int(11) NOT NULL COMMENT '最后一次登录的地址',
  `last_login_time` int(11) NOT NULL COMMENT '最后一次登录的时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pwd`, `last_login_ip`, `last_login_time`) VALUES
(6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 400, 1537588492);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `num`
--
ALTER TABLE `num`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proID`);

--
-- Indexes for table `sess`
--
ALTER TABLE `sess`
  ADD PRIMARY KEY (`sess_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `art`
--
ALTER TABLE `art`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一id', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `link`
--
ALTER TABLE `link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id';
--
-- 使用表AUTO_INCREMENT `num`
--
ALTER TABLE `num`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `proID` int(40) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
