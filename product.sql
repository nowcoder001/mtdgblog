-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-23 03:33:06
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
  `content` longtext NOT NULL COMMENT '文章内容',
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
(1, 30, '01-博客项目实战开发', '<p>嘿~关注我的朋友们，你们好，经过一个多月的改造，杰哥博客再次与大家见面啦~</p><p>以前的博客是刚开始学php时候搭建的，没有用到MVC去设计，前端使用了较老的布局方式（类似微博），本次更新，杰哥借鉴了慕课网的教学内容，采取了扁平化风格，自己设计增加了几个页面，并完善了部分布局，比较可惜的是还是没来得及实现响应式，但我会逐步完善的，后端使用的是原生MVC框架，我会将以前的笔记逐步转移到这里来的,umm....秉着开源精神，我会把这次更新的博客作为一个项目实战分享给大家,希望能够一步一步和大家一起完善它，毕竟我觉得能够改善的地方还有很多很多滴~，部分地方有实现的想法的却没有付出行动去实现~总之,杰哥感谢大家对我的的支持和鼓励,让我们一起加油~</p><p><br/></p><p>前端的教程链接：</p><p>HTML5和CSS3扁平化风格博客</p><p><a href="https://www.imooc.com/learn/445" target="_blank">https://www.imooc.com/learn/445</a></p><p>CSS3扁平化博客之文章页及常用组件</p><p><a href="https://www.imooc.com/learn/598" target="_blank">https://www.imooc.com/learn/598</a></p><p><br/></p><p>我在教程的基础上增加了两个分类页面（正常流和伪瀑布流），并对教程的一些CSS样式进行了修改和完善，教程的样式就只是为了实现而实现，没有考虑实际运用的一些问题，我处理了一下，但可能还会有一些错误，期待你来修改~</p><p><br/></p><p>项目Github分享连接：<a href="https://github.com/mtdgclub/mtdgblog" target="_blank">https://github.com/mtdgclub/mtdgblog</a></p><p>该项目后台账号admin 密码123456&nbsp;</p><p><br/></p><p>文章目录，跟着杰哥从零搭建博客系统：（持续更新中）</p><p>1.</p><p>2.</p><p>3.</p><p><br/></p>', 1536504893, 1540809702, 0, 128, '博客项目，原生MVC框架', '2018-09-26/5baa61c34c1945.30131443.jpg', '2018-09-26/sm_5baa61c34c1945.30131443.jpg', '2018-09-26/mid_5baa61c34c1945.30131443.jpg', NULL),
(5, 14, '关于自学的一些个人建议', '<p>很多学习前后端的同学，包括以前的我自己不是很明白学习前后端到了什么阶段？而下一阶段需要掌握什么技术？</p><p><br/></p><p>有人认为php就是做网站的，有人认为前端就学好html+css+js就好了，其实这是不对的思想，殊不知每一种语言都是博大精深的，包括php也不例外，你可能听说学php很好学，就跑去学习，能够开发一些简单网站，就以为学会了，其实这只不过是你对技术栈没有深一步的了解罢了，你学的不过是一些皮毛。</p><p><br/></p><p>可以说，php只是后台数据处理的一种工具，html+css+js只不过是前端的基础，你要学的东西还有很多很多，下面杰哥为大家列出我学习各个方向的成长树，大家可以参考学习，但每个人的学习道路和方法都不一样，如有不妥，敬请理解。</p><p><br/></p><p>web基本分为：前端页、后端页、数据库、服务器（一般是Linux）</p><p><br/></p><p>前端成长树</p><p>##初级##</p><p>html/html5、css/css3、常见布局、仿PC/移动端网页、js等</p><p>##中级##</p><p>jq、git版本控制、响应式布局、性能意识、代码规范等</p><p>##高级##</p><p>框架（vue.js/react/Angular等）、ECMAScript6、NPM、了解Gulp和Webpack工具、了解CanvasAPI使用等</p><p>##建议##</p><p>学用Markdown写项目说明书</p><p>用Visual studio code写JS</p><p>用Sublime text3写html和css</p><p>用chrome进行前端调试</p><p>##额外学习语言##</p><p>后端语言php/java等，不理解后端的前端不是一个好前端，起码后端的基础知识和逻辑要懂</p><p>##实战项目##</p><p>实现一个简单的TodoList</p><p>仿京东、淘宝等<br/></p><p><br/></p><p>php成长树</p><p>##初级##</p><p>php语法基础、html+css+js、mysql基础、Linux、MVC等</p><p>##中级##</p><p>框架（tp/codelgniter/lavavel/symfony/yii等）、jq、memcached/redis/mongodb、Nginx等&nbsp;</p><p>##高级##</p><p>SVN/GIT版本控制、页面静态技术、RESTful的API、数据优化等</p><p>##额外学习语言##</p><p>Go、docker、python等</p><p>##实战小项目##</p><p>开发注册登录与邮件验证</p><p>用Ajax上传图片</p><p>PDO数据库开发</p><p>Ajax注册与验证等</p><p>##实战大项目##</p><p>内容管理系统</p><p>克隆Twitter</p><p>从零开发MVC框架</p><p>个人博客<br/></p><p>电商系统等</p><p><br/></p><p>额外补充一些杰哥在学习中遇到的不错的网站，大家有需求可以上去看看~</p><p>面试题网站推荐：leetcode、IT面试网、七月算法、面试宝典网、百面网等</p><p>自学网站推荐：慕课网、实验楼、freecodecamp、php中文网等</p><p>开源托管平台网站推荐：github、码云gitee等</p><p>一些开源的图标网站推荐：fontawesome、icomoon等</p><p><strong>最后，以上仅代表个人建议，谢谢大家的支持和鼓励~</strong></p>', 1537937530, 1540809647, 0, 67, '学习之路，关于进阶', '2018-09-26/5bab107a2ee7f1.43846251.jpg', '2018-09-26/sm_5bab107a2ee7f1.43846251.jpg', '2018-09-26/mid_5bab107a2ee7f1.43846251.jpg', NULL),
(9, 14, '基于Centos7的后台网站部署搭建(实训答辩)', '<p style="margin: 0pt; text-align: center;"><strong><span style="font-size: 24px;"><span style="font-family: 宋体;">项目三：基于</span><span style="font-family: Roboto;">Linux</span><span style="font-family: 宋体;">的后台网站部署搭建</span></span></strong></p><p style="margin: 0pt;"><span style="font-family: 宋体; font-size: 11pt; text-decoration-line: underline;">前言</span><span style="font-family: Roboto; font-size: 11pt; text-decoration-line: underline;">:</span><span style="font-family: 宋体; font-size: 11pt;">以前我们经常说</span><span style="font-family: Roboto; font-size: 11pt;">LAMP</span><span style="font-family: 宋体; font-size: 11pt;">，但是自从在学校接触开发以后，通常使用的是</span><span style="font-family: Roboto; font-size: 11pt;">WAMP</span><span style="font-family: 宋体; font-size: 11pt;">，而不去选择</span><span style="font-family: Roboto; font-size: 11pt;">LAMP</span><span style="font-family: 宋体; font-size: 11pt;">，其原因是不熟悉</span><span style="font-family: Roboto; font-size: 11pt;">Liunx</span><span style="font-family: 宋体; font-size: 11pt;">系统且不会搭建，经过学校安排的实训课，我对</span><span style="font-family: Roboto; font-size: 11pt;">Linux</span><span style="font-family: 宋体; font-size: 11pt;">有了极好的了解，并且能够使用</span><span style="font-family: Roboto; font-size: 11pt;">LAMP</span><span style="font-family: 宋体; font-size: 11pt;">进行项目开发和测试，这对于开发人员来说，是以后应聘不可多得的一项技能（能够在简历上写上了解</span><span style="font-family: Roboto; font-size: 11pt;">Liunx</span><span style="font-family: 宋体; font-size: 11pt;">并能搭建环境</span><span style="font-family: Roboto; font-size: 11pt;">~</span><span style="font-family: 宋体; font-size: 11pt;">最后，感谢老师的教导</span><span style="font-family: Roboto; font-size: 11pt;">~</span><span style="font-family: 宋体; font-size: 11pt;">）</span></p><h1 style="background-color: rgb(255, 255, 255); margin: 0pt; text-indent: 0pt;"><span style="font-family: Roboto; font-size: 18pt;">1．部署Apache服务器</span></h1><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Arial; font-size: 12pt; font-weight: bold;">Apache</span><span style="font-family: Arial; font-size: 12pt;">程序是目前拥有很高市场占有率的Web服务程序之一，其</span><span style="font-family: Arial; font-size: 12pt; font-weight: bold;">跨平台</span><span style="font-family: Arial; font-size: 12pt;">和</span><span style="font-family: Arial; font-size: 12pt; font-weight: bold;">安全性</span><span style="font-family: Arial; font-size: 12pt;">广泛被认可且拥有快速、可靠、简单的API扩展。 它的名字取自美国印第安人土著语，寓意着拥有高超的作战策略和无穷的耐性，在红帽RHEL5、6、7系统中一直作为着默认的Web服务程序而使用，并且也一直是红帽RHCSA和红帽RHCE的考试重点内容。Apache服务程序可以运行在Linux系统、Unix系统甚至是Windows系统中，支持基于IP、域名及端口号的虚拟主机功能、支持多种HTTP认证方式、集成有代理服务器模块、安全Socket层(SSL)、能够实时监视服务状态与定制日志消息，并有着各类丰富的模块支持。</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Arial; font-size: 12pt;">&nbsp;</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 12pt;">第一步：安装Apache服务程序(apache服务的软件包名称叫做httpd)</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 12pt;">yum install httpd -y</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456976136539.png" width="509" height="380" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">此处列出以后可能会用到的命令：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">systemctl start httpd.service #</span><span style="font-family: 宋体; font-size: 10.5pt;">启动</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">apache systemctl stop httpd.service #</span><span style="font-family: 宋体; font-size: 10.5pt;">停止</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">apache systemctl restart httpd.service #</span><span style="font-family: 宋体; font-size: 10.5pt;">重启</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">apache systemctl enable httpd.service #</span><span style="font-family: 宋体; font-size: 10.5pt;">设置</span><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">开机启动</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Arial; font-size: 12pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Arial; font-size: 12pt;">第二步： 将Apache服务添加到 开机自启中</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456976121087.png" width="554" height="77" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">第三步：查询虚拟机的</span><span style="font-family: Calibri; font-size: 10.5pt;">IP</span><span style="font-family: 宋体; font-size: 10.5pt;">地址，命令：</span><span style="font-family: Calibri; font-size: 10.5pt;">ip addr</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456977108827.png" width="554" height="198" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">在本机的浏览器上输入虚拟机</span><span style="font-family: Calibri; font-size: 10.5pt;">IP</span><span style="font-family: 宋体; font-size: 10.5pt;">地址尝试访问，结果失败</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456978138558.png" width="410" height="215" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">通过查询，发现虚拟机的防火墙未关闭</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">防火墙查询命令：</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl status firewalld</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">防火墙开机启动</span><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">：</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl enable firewalld</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">临时关闭防火墙</span><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">：</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl stop firewalld</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">永久防火墙开机自关闭</span><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">：</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl disable firewalld</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">查询</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456979109184.png" width="554" height="142" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">临时关闭</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456982522018.png" width="554" height="181" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">再次在本机的浏览器上输入虚拟机</span><span style="font-family: Calibri; font-size: 10.5pt;">IP</span><span style="font-family: 宋体; font-size: 10.5pt;">地址尝试访问</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456983221398.png" width="436" height="313" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">应用服务文件</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456983104373.png" width="377" height="199" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 12pt;">查</span><span style="font-family: Arial; font-size: 12pt;">看下主配置文件： vim /etc/httpd/conf/httpd.conf</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456984978585.png" width="554" height="427" alt=""/></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 12pt;">在httpd服务程序主配置文件中最为常用的参数包括有：</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><img src="/ueditor/php/upload/image/20181025/1540456985439053.png" width="356" height="422" alt=""/></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 12pt;">从上面表格中可以得知</span><span style="font-family: Arial; font-size: 12pt; font-weight: bold;">DocumentRoot</span><span style="font-family: Arial; font-size: 12pt;">正是用于定义网站数据保存路径的参数，其参数的默认值是把网站数据存放到了</span><span style="font-family: Arial; font-size: 12pt; font-weight: bold;">/var/www/html</span><span style="font-family: Arial; font-size: 12pt;">目录中的，而网站首页的名称应该叫做index.html，因此可以手动的向这个目录中写入一个文件来替换掉httpd服务程序的默认网页，这种操作是立即生效的</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 12pt;">echo &quot;hello everyone my name is&nbsp;fangzhijie&quot; &gt; /var/www/html/index.html</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Arial; font-size: 12pt;">再次在浏览器查看</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456986499211.png" width="554" height="142" alt=""/></p><h1 style="background-color: rgb(255, 255, 255); margin: 0pt; text-indent: 0pt;"><span style="font-family: Roboto; font-size: 18pt;">2．部署Mysql</span><span style="font-family: 宋体; font-size: 18pt;">数据库</span></h1><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">按照以前的习惯我们</span><span style="font-family: Tahoma; font-size: 10.5pt;">使用的数据库是MySQL，但因为从Centos 7.0开始，默认支持的是mariaDB，而且mariaDB几乎是完全兼容MySQL的，</span><span style="font-family: 宋体; font-size: 10.5pt;">同时，老师在第三阶段的第九单元讲解了</span><span style="font-family: Tahoma; font-size: 10.5pt;">mariaDB</span><span style="font-family: 宋体; font-size: 10.5pt;">，因此我们</span><span style="font-family: Tahoma; font-size: 10.5pt;">选择使用mariaDB，而MySQL的安装和使用也几乎是相同的。</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">安装命令：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">yum install mariadb mariadb-server</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456986113152.png" width="553" height="256" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">然后开启</span><span style="font-family: Tahoma; font-size: 10.5pt;">mariadb</span><span style="font-family: 宋体; font-size: 10.5pt;">服务，并将之设置为开机自启动</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">systemctl start mariadb</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Tahoma; font-size: 10.5pt;">systemctl enable mariadb</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456987854309.png" width="554" height="88" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">然后初始化数据库安全选项</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">输入命令</span><span style="font-family: Calibri; font-size: 10.5pt;">mysql_secure_installation</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">按照提示设置好数据库</span><span style="font-family: Calibri; font-size: 10.5pt;">root</span><span style="font-family: 宋体; font-size: 10.5pt;">用户密码即可，我这里设置账号为</span><span style="font-family: Calibri; font-size: 10.5pt;">root</span><span style="font-family: 宋体; font-size: 10.5pt;">，密码为</span><span style="font-family: Calibri; font-size: 10.5pt;">123456</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456988609459.png" width="431" height="413" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">然后按照格式登陆数据库</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">mysql&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">–</span><span style="font-family: Calibri; font-size: 10.5pt;">u root -h localhost -p123456</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456989589750.png" width="554" height="155" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">此时数据库安装成功</span><span style="font-family: Calibri; font-size: 10.5pt;">~</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><h1 style="background-color: rgb(255, 255, 255); margin: 0pt; text-indent: 0pt;"><span style="font-family: Roboto; font-size: 18pt;">3．部署PHP</span><span style="font-family: 宋体; font-size: 18pt;">环境</span></h1><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">安装命令</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">yum install php</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">但是这样安装</span><span style="font-family: Roboto; font-size: 10.5pt;">php</span><span style="font-family: 宋体; font-size: 10.5pt;">并不支持</span><span style="font-family: Roboto; font-size: 10.5pt;">mysql</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">因此，正确打开的方式是</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">php php-mysql mariadb*</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">附上一条通用一键安装命令，使</span><span style="font-family: Roboto; font-size: 10.5pt;">php</span><span style="font-family: 宋体; font-size: 10.5pt;">支持更多常用的插件（不建议，会等死你）</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">yum install php-mysql php-gd libjpeg* php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Roboto; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">这里我们安装命令为</span><span style="font-family: Roboto; font-size: 10.5pt;">php php-mysql mariadb*</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">安装插件越多，安装包就越大，时间就越长，大家按需安装就好</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456989129641.png" width="554" height="296" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">查看是否安装</span><span style="font-family: Calibri; font-size: 10.5pt;">php:</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456990366501.png" width="528" height="90" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">查看是否安装</span><span style="font-family: Calibri; font-size: 10.5pt;">apache:</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456991680719.png" width="411" height="87" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">下面进行测试</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">建立一个名为</span><span style="font-family: Calibri; font-size: 10.5pt;">index.php</span><span style="font-family: 宋体; font-size: 10.5pt;">的文件夹</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">该文件内容如下：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&lt;?php</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">echo phpinfo();</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">?&gt;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">快捷命令如下：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">echo &quot;&lt;?php echo phpinfo();?&gt;&quot; &gt; /var/www/html/index.php</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">测试，如果发现显示失败，目测</span><span style="font-family: Calibri; font-size: 10.5pt;">php</span><span style="font-family: 宋体; font-size: 10.5pt;">没有挂载到</span><span style="font-family: Calibri; font-size: 10.5pt;">Apache</span><span style="font-family: 宋体; font-size: 10.5pt;">上（重点：先重启</span><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">一次测试再改）</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">查看下主配置文件：&nbsp;</span><span style="font-family: Calibri; font-size: 10.5pt;">vim /etc/httpd/conf/httpd.conf</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456992140498.png" width="554" height="125" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">重启</span><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">命令：</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl restart httpd</span><span style="font-family: 宋体; font-size: 10.5pt;">或者&nbsp;</span><span style="font-family: Calibri; font-size: 10.5pt;">systemctl restart httpd.service</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">如果重启失败，麻烦把这个文件改回去（删除上面的内容）</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">我的问题是没有重启</span><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">，重启后显示安装</span><span style="font-family: Calibri; font-size: 10.5pt;">php</span><span style="font-family: 宋体; font-size: 10.5pt;">成功</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456992118591.png" width="553" height="216" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">测试成功！</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><h1 style="background-color: rgb(255, 255, 255); margin: 0pt; text-indent: 0pt;"><span style="font-family: Roboto; font-size: 18pt;">4．</span><span style="font-family: 宋体; font-size: 18pt;">通过</span><span style="font-family: Roboto; font-size: 18pt;">SSH</span><span style="font-family: 宋体; font-size: 18pt;">上传网站文件（数据恢复操作）</span></h1><h3 style="font-size: 16pt; line-height: 36.6933px; margin: 13pt 0pt; break-after: avoid; break-inside: avoid; text-align: justify;"><span style="font-family: Calibri; font-size: 16pt;">4.1</span><span style="font-family: 宋体; font-size: 16pt;">安装</span><span style="font-family: Calibri; font-size: 16pt;">SSH</span></h3><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 10.5pt;">为了方便管理Linux服务器，SSH工具必不可少，</span><span style="font-family: 宋体; font-size: 10.5pt;">因此我们</span><span style="font-family: Arial; font-size: 10.5pt;">要在服务器（Linux）安装SSH工具。</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 10.5pt;">安装SSH：yum install sshd</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 10.5pt;">其他命令：</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 10.5pt;">service sshd start #启动服务</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: Arial; font-size: 10.5pt;">chkconfig sshd on#设置自启动</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: 宋体; font-size: 10.5pt;">因为之前的学习需要，我已经安装好了</span><span style="font-family: Arial; font-size: 10.5pt;">SSH</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><span style="font-family: 宋体; font-size: 10.5pt;">查看命令：</span></p><p style="background-color: rgb(255, 255, 255); line-height: 19.5pt; margin: 0pt 0pt 12pt;"><img src="/ueditor/php/upload/image/20181025/1540456993572709.png" width="554" height="191" alt=""/></p><h3 style="font-size: 16pt; line-height: 36.6933px; margin: 13pt 0pt; break-after: avoid; break-inside: avoid; text-align: justify;"><span style="font-family: Arial; font-size: 16pt;">4.2</span><span style="font-family: 宋体; font-size: 16pt;">安装</span><span style="font-family: Calibri; font-size: 16pt;">SSH</span><span style="font-family: 宋体; font-size: 16pt;">管理客户端</span></h3><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">本地安装</span><span style="font-family: Calibri; font-size: 10.5pt;">SSH</span><span style="font-family: 宋体; font-size: 10.5pt;">管理客户端，我使用的是老师给我们的软件</span><span style="font-family: Calibri; font-size: 10.5pt;">SSH Secure</span><img src="/ueditor/php/upload/image/20181025/1540456994300318.png" width="77" height="106" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">安装好后使用&nbsp;</span><span style="font-family: Calibri; font-size: 10.5pt;">SSH Secure File Transfer Client&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">程序（验证一般是</span><span style="font-family: Calibri; font-size: 10.5pt;">Linux</span><span style="font-family: 宋体; font-size: 10.5pt;">的用户和密码），将我们备份的网站数据解压后上传到服务器对应目录中。如果</span><span style="font-family: Calibri; font-size: 10.5pt;">Apache</span><span style="font-family: 宋体; font-size: 10.5pt;">是默认安装，网站根目录应该是：</span><span style="font-family: Calibri; font-size: 10.5pt;">“/var/www/html”</span><span style="font-family: 宋体; font-size: 10.5pt;">，直接上传整个原网站的文件到这个目录下即可。</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456995209005.png" width="443" height="313" alt=""/></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456995447487.png" width="411" height="416" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456996112041.png" width="551" height="199" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">我上传一些文件如下</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456997525805.png" width="554" height="146" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">显示结果如下：</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456998442753.png" width="554" height="158" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 16pt; font-weight: bold;">综上，此次项目完美结束</span><span style="font-family: Calibri; font-size: 16pt; font-weight: bold;">~</span><span style="font-family: 宋体; font-size: 16pt; font-weight: bold;">再次感谢老师的教导</span><span style="font-family: Calibri; font-size: 16pt; font-weight: bold;">~</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">由于本文档在老师发项目要求前写，作为学生当然尽可能满足老师的项目要求</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">一些要求：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">1.</span><span style="font-family: 宋体; font-size: 10.5pt;">创建一个名为</span><span style="font-family: Calibri; font-size: 10.5pt;">Profile</span><span style="font-family: 宋体; font-size: 10.5pt;">的数据库</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">2.</span><span style="font-family: 宋体; font-size: 10.5pt;">在库中创建一个名为</span><span style="font-family: Calibri; font-size: 10.5pt;">namelist</span><span style="font-family: 宋体; font-size: 10.5pt;">的表，要求列名为</span><span style="font-family: Calibri; font-size: 10.5pt;">:ID(</span><span style="font-family: 宋体; font-size: 10.5pt;">自动增长、不可为空、可做主键）</span><span style="font-family: Calibri; font-size: 10.5pt;">,name,age,address</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">3.</span><span style="font-family: 宋体; font-size: 10.5pt;">向</span><span style="font-family: Calibri; font-size: 10.5pt;">namelist</span><span style="font-family: 宋体; font-size: 10.5pt;">表中插入下三条信息，内容自定义。</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">手动创建数据库：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">mysql&nbsp;</span><span style="font-family: 宋体; font-size: 10.5pt;">–</span><span style="font-family: Calibri; font-size: 10.5pt;">u root -h localhost -p123456</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">create database Profile DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">mysql-&gt;use Profile;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">mysql-&gt;set names utf8;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">mysql-&gt;create table namelist(</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">id int(4) auto_increment not null primary key,</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">name char(10) not null,</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">address varchar(50),</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">age int(2)</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">);</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">insert into namelist values(`null`,`fang`,`guangzhou`,`19`);</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">insert into namelist values(`null`,`zhi`,`dongguan`,`23`);</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">insert into namelist values(`null`,`jie`,`shenzhen`,`21`);</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">查看表内容</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">select * from namelist;</span></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456998138691.png" width="554" height="215" alt=""/></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540456999247045.png" width="432" height="113" alt=""/></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540457000100466.png" width="554" height="44" alt=""/></p><p style="margin: 0pt; text-align: justify;"><img src="/ueditor/php/upload/image/20181025/1540457000489228.png" width="381" height="173" alt=""/></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">后序思考：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">1.</span><span style="font-family: 宋体; font-size: 10.5pt;">上面我们是完全禁用防火墙的，但是实际开发运维中，防火墙最好不要禁用，那么我们有什么办法呢？</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">防火墙放行</span><span style="font-family: Calibri; font-size: 10.5pt;">httpd,</span><span style="font-family: 宋体; font-size: 10.5pt;">命令如下：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">firewall-cmd --permanent --add-service=http --add-service=https</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">firewall-cmd --reload</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">&nbsp;</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">2.php</span><span style="font-family: 宋体; font-size: 10.5pt;">缺乏一些模块例如，</span><span style="font-family: Calibri; font-size: 10.5pt;">GD</span><span style="font-family: 宋体; font-size: 10.5pt;">库，</span><span style="font-family: Calibri; font-size: 10.5pt;">curl</span><span style="font-family: 宋体; font-size: 10.5pt;">，</span><span style="font-family: Calibri; font-size: 10.5pt;">mbstring,...</span><span style="font-family: 宋体; font-size: 10.5pt;">怎么办？</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">1.</span><span style="font-family: 宋体; font-size: 10.5pt;">安装命令：</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">2.</span><span style="font-family: 宋体; font-size: 10.5pt;">重启</span><span style="font-family: Calibri; font-size: 10.5pt;">apache</span><span style="font-family: 宋体; font-size: 10.5pt;">服务</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: Calibri; font-size: 10.5pt;">systemctl restart httpd.service</span></p><p style="margin: 0pt; text-align: justify;"><span style="font-family: 宋体; font-size: 10.5pt;">然后，再次在浏览器中运行</span><span style="font-family: Calibri; font-size: 10.5pt;">index.php</span><span style="font-family: 宋体; font-size: 10.5pt;">，你会看到安装的模块的信息；</span></p><p><br/></p>', 1540457275, 1540458210, 0, 33, 'Liunx学习,后台搭建', '2018-10-25/5bd1833b7d9758.08084982.jpg', '2018-10-25/sm_5bd1833b7d9758.08084982.jpg', '2018-10-25/mid_5bd1833b7d9758.08084982.jpg', NULL);

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
(14, '杂谈趣事', 50, 10),
(15, '前端笔记', 50, 10),
(22, '后端笔记', 50, 10),
(23, '设计笔录', 50, 0),
(25, '设计笔记', 50, 23),
(26, '一些练习', 50, 23),
(27, '作品集', 50, 23),
(28, '项目实战', 50, 0),
(29, '一些练习', 50, 28),
(30, 'web应用', 50, 28),
(31, 'WX小程序', 50, 28);

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
(1, '笔记&练习', '要足够丰盛，才可以和世界平等对望，然后说再见。', '项目实战', '英雄者，胸怀大志，腹有良谋，有包藏宇宙之机，吞吐天地之志也。', '杰哥博客', '用文字记录点滴成长<br>技术，创作，杂谈，无所不欢', 'index.php?p=Home&c=Home&a=list', '自我吐槽', '嗨~你好！我是FZ杰哥，立志要成为一名会设计的全栈工程师，目前主要技术栈是PHP和前端，在web的开发、服务器维护和微信小程序开发上有所心得，曾参与校内工作室就多项项目达成合作，因此对项目的开发流程比较清楚，由于某些原因，就喜欢上了设计，因此对海报、字体、UI、插画等有所涉及，能够对PS、AI、Sketch等软件熟练运用，现在在努力成为一名会设计的全栈工程师的路上越陷越深，感谢你的支持与鼓励~ o(*￣▽￣*)ブ', '业精于勤', '大巧在所不为，大智在所不虑。', '“业精于勤荒于嬉”，精深的业技靠的是勤学、刻苦努力，靠的是争分夺秒的勤学苦练才会有精深的技术。得在认真，失在随便。', '学无止境', '智如目也，能见百步之外而不能自见其睫。', '学习，探索，研究，从不了解到了解，从无知到掌握，到灵活运用，在不断的学习中加深认识。由浅入深，由表及里。', '工匠精神', '独视者谓明，独听者谓聪，能独断者故可以为天下王。', '精益求精，注重细节，追求完美和极致，不惜花费时间精力，孜孜不倦，反复改进产品，把99%提高到99.99%。', '项目实战', '不闻不若闻之，闻之不若见之，见之不若知之，知之不若行之，学至于行而止矣，行之，明也。', '创作不易，喜欢就请我喝杯奶茶吧~', '方寸间，历数世上桑田沧海；时空里，细问人间暑往寒来；是朋友，星移斗转情不改；是知音，天涯海角记心怀。', '#');

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
(1, 3687, 33, 1542905583);

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
('vvoibujdl9sahfa6nd1aun0d00', '', 1542568740),
('vvqsa8v473sr48214928bi2u62', '', 1542284060),
('vvroac4esoovaechqg1lspes67', '', 1542305679);

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
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1902739524, 1542942769);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=32;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
