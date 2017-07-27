$(function(){
	var $userTitle = $("#userTitle");
	var $inputText = $("#userText");
	
	$inputText.focus(function(){
		$userTitle.stop(true).animate({
			opacity:1,
			marginLeft:25 + 'px'
		});
	}).blur(function(){
		$userTitle.stop(true).animate({
			opacity:0,
			marginLeft:0 + 'px'
		});
	});
	
	$(".loginBox form").submit(function(){
		var code = $("#jcaptcha").val();
		$(this).prop("action", $(this).prop("action") + "?r=" + code);
	});

    $(".loginBox form").mouseenter(function(){
    	//背景图片变大...
		$(this).siblings("img").animate({
			width:120 + "%",
			height:120 + "%",
			marginLeft:-10 + "%"
		})
	}).mouseleave(function(){
        $(this).siblings("img").animate({
            width:100 + "%",
            height:100 + "%",
            marginLeft:0 + "%"
        })
	});
	
});