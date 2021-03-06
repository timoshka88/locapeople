$(document).ready(function(){
	console.log("in the document ready function")
	new PagesController(new PagesView).init();
});

function PagesController(view){
	console.log("in the pagesController model")
	this.view = view

}

PagesController.prototype = {
	init: function(){
		console.log("I'm in the Pages controller")
		this.view.drawLandingPageCanvas(),
		$('#sdt_menu > li').bind('mouseenter', this.mouseenterEffect).bind('mouseleave', this.mouseleaveEffect);
	},

	mouseenterEffect: function(){
		var $elem = $(this);
		$elem.find('img')
			.stop(true)
			.animate({
			'width':'170px',
			'height':'170px',
			'left':'0px'
			},400,'easeOutBack')
			.andSelf()
			.find('.sdt_wrap')
				.stop(true)
			.animate({'top':'140px'},500,'easeOutBack')
			.andSelf()
			.find('.sdt_active')
				.stop(true)
			.animate({'height':'170px'},300,function(){
		var $sub_menu = $elem.find('.sdt_box');
		if($sub_menu.length){
			var left = '170px';
			if($elem.parent().children().length == $elem.index()+1)
				left = '-170px';
			$sub_menu.show().animate({'left':left},200);
			}	
		});
	},

	mouseleaveEffect: function(){
		var $elem = $(this);
		var $sub_menu = $elem.find('.sdt_box');
		if($sub_menu.length)
			$sub_menu.hide().css('left','0px');
			
		$elem.find('.sdt_active')
			.stop(true)
			.animate({'height':'0px'},300)
			.andSelf().find('img')
			.stop(true)
			.animate({
				'width':'0px',
				'height':'0px',
				'left':'85px'},400)
			.andSelf()
			.find('.sdt_wrap')
			.stop(true)
			.animate({'top':'25px'},500);
	}

};