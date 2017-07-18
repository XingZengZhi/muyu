$(function() {
	var time = setInterval(SlidePic_time, 3000);
    //	获取轮播图片的点击按钮
    var BtnLeft = $(".left"); //左按钮
    var BtnRight = $(".right"); //右按钮
	//	通过选择器选择参与轮播图的元素
	var href, clas, src;

	function SlidePic_left() {
		//获得轮播图中class属性包含barner名称的元素
		var barner = $("#barner_box a[class*='barner']");
		//遍历每张图，并移动
		barner.each(function(i, n) {
			//i为遍历元素的下标，n为遍历元素的DOM
			$(n).stop(true).animate({ // true 清空队列，可以立即结束动画
				left: (i - 1) * 100 + "%"
			}, 1000, function() {
				//判断是否是第一站
				if(i == 0) {
					href = $(n).prop("href"); //获取图片href
					clas = $(n).prop("class"); //获取图片类名字
					src = $(n).children("img").prop("src"); //获取图片路径
					//向左滑动，删除第一张并向最后面添加
					$("#barner_box a[class*='barner']:first").remove();
					$("#barner_box").append(
						$("<a href='" + href + "' class='" + clas + "'>" + "<img src='" + src + "' /></a>").css("left", "200%")
					);
				}
			});
		});
	}
	function SlidePic_right() {
		//获得轮播图中class属性包含barner名称的元素
		var barner = $("#barner_box a[class*='barner']");
		//遍历每张图，并移动
		barner.each(function(i, n) {
			//i为遍历元素的下标，n为遍历元素的DOM
			$(n).stop(true).animate({ // 第二个true  让当前正在执行的动画立即完成，并且重设show和hide的原始样式，调用回调函数等。
				left: i * 100 + "%"
			}, 1000,function(){
                if(i == 0) {
                    //获得最后一张图片的DOM对象
                    var last = $("#barner_box a[class*='barner']:last");
                    //向左滑动，删除第一张并向最后面添加
                    href = last.prop("href"); //获取图片href
                    clas = last.prop("class"); //获取图片类名字
                    src = last.children("img").prop("src"); //获取图片路径

                    $("#barner_box").prepend(
                        $("<a href='" + href + "' class='" + clas + "'>" + "<img src='" + src + "' /></a>").css("left", "-100%")
                    );
                    last.remove();
                }
			});
		});
	}

	// 向左滑动需要获取第一张图片并向最后添加
	BtnLeft.bind('click', function() {
		SlidePic_left();
	});
	BtnRight.bind("click", function() {
		SlidePic_right();
	});

	function SlidePic_time() {
		SlidePic_left();
	}
	var barner = $("#barner_box");
	barner.mouseenter(function() {
        clearInterval(time);//清楚定时
	}).mouseleave(function(){
        time = setInterval(SlidePic_time, 3000);//重新设置定时
	});

	//设置团队介绍鼠标划过事件,有子元素继承事件的bug
	$("#com_team div[class*='com']").mouseenter(function(e) {
		$(this).children().eq(1).stop(true).animate({
			top: 20 + '%'
		});
		$(this).children().eq(2).stop(true).animate({
			top: 40 + '%',
			opacity: 1
		});
		$(this).children().eq(3).stop(true).animate({
			top: 60 + '%',
			opacity: 1
		}, 300);
	}).mouseleave(function() {
		$(this).children().eq(1).stop().animate({
			top: 40 + '%'
		});
		$(this).children().eq(2).stop().animate({
			top: 60 + '%',
			opacity: 0
		});
		$(this).children().eq(3).stop().animate({
			top: 80 + '%',
			opacity: 0
		}, 300);
	});
	//返回顶部
	$("#backTop").mouseenter(function() {
		$(".top_").hide();
		$(".return_top").show();
	}).mouseleave(function() {
		$(".top_").show();
		$(".return_top").hide();
	})
	//当下拉滚动条大于菜单栏高度时，让菜单栏使用绝对定位。
	$(window).scroll(function() {
		if($(document).scrollTop() > 500) {
			$("#head_box ul").css({
				position:'fixed',
				zIndex:100,
				width:100 + '%',
				opacity:1
			});
		}else{
			$("#head_box ul").css({
				position:'relative',
				width:750 + 'px',
				opacity:1
			});
		}
	});
	//返回顶部按钮
	$(".return_top").click(function(){
		$(window).scrollTop(0 + 'px');
	});

});