$(function(){
	var $userTitle = $("#userTitle");
	var $inputText = $("#userText");
	//帐号输入提示框
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
	//表单提交，提交验证码
	$(".loginBox form").submit(function(){
		var code = $("#jcaptcha").val();
		$(this).prop("action", $(this).prop("action") + "?r=" + code);
	});
	//登录背景图片效果
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

    //提取Cookie
	var ck = document.cookie.split("=");
	console.log(ck);
	if(ck){
		alert("注册成功！");
	}
});