;$(function(){
	'use strict';
	console.log('大哥,大哥,放下屠刀,求你不要搞事情~');
	console.log('小弟的服务器很菜,用的是阿里云每月十块学生机');
	console.log('虽然加了安全认证,但是技术肯定没您牛逼');
	console.log('您需要什么,请尽管联系我,邮箱:747245429@qq.com');
	var sidebar=$('#sidebar'),//选择侧栏
	mask=$('.mask'),
	backButton=$('.back-to-top'),
	sidebar_trigger=$('#sidebar_trigger');
	function showSideBat(){
		mask.fadeIn();
		sidebar.animate({'right':0});
	}
	function hideSideBat(){
		mask.fadeOut();
		sidebar.animate({'right':-sidebar.width()});
	}
	function backToTop(){
		// console.log('top');
		$('html,body').animate({scrollTop:0},800);
	}
	function hidebackButton(){
		if ($(window).scrollTop()>$(window).height()) {
			backButton.fadeIn();
		}else
			backButton.fadeOut();
	}
	sidebar_trigger.on('click',showSideBat);
	mask.on('click',hideSideBat);
	backButton.on('click',backToTop);
	$(window).on('scroll',hidebackButton);
	$(window).trigger('scroll');
})