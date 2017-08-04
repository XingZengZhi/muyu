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
		$(this).siblings("img").stop(true).animate({
			width:120 + "%",
			height:120 + "%",
			marginLeft:-10 + "%"
		})
	}).mouseleave(function(){
        $(this).siblings("img").stop(true).animate({
            width:100 + "%",
            height:100 + "%",
            marginLeft:0 + "%"
        })
	});

    $("#CodeImage").click(function(){
    	$(this).prop("src", $(this).prop("src"));
	});

    //提取Cookie
	var ck = document.cookie.split(";")[0].split("=");
	if(ck[1] == 1){
		alert("注册成功！");
		document.cookie = ck[0]+"="+";"+"expires=-1";
	}

	//省略号动态
	var i = 0, time;
    time = setTimeout(sldt, 1000);
	function sldt(){
		$("#sl").append(" .");
        i++;
        if(i == 4){
        	i = 0;
            $("#sl").html("");
		}
        time = setTimeout(sldt, 1000);
	}

	//查找用户邮箱
	var host = window.location.href;
	var pathname = window.location.pathname;
	var localhost = host.substring(0, host.indexOf(pathname));
	while(pathname.lastIndexOf("/")){
        pathname = pathname.substring(0, pathname.lastIndexOf("/"));

	}
	var hostHref = localhost + pathname; //服务根路径
	$.ajax({
		type:"GET",
		url:hostHref + "/findMail",
		data:"userName=" + $("#forPassUname").html(),
		dataType:"text",
		success:function(result){
			var emailValue = result.substring(0, result.indexOf("@"));
			var emailType = result.substr(result.indexOf("@"));
			var numArr = emailValue.split("");
			for(var i = 0;i<numArr.length;i++){
				if(i != 0 && i != numArr.length - 1){
					numArr[i] = "*";
				}
			}
			var newEmailValue = numArr.join("");//将数组转换成字符串
			var userEmail = newEmailValue + emailType
			clearTimeout(time);
			$("#sl").html("");
			$("#showMail").stop(true).animate({
				opacity:1
			}, function(){
                $("#hiddenEmail").html(userEmail);
			});
		}
	});
	//发送邮件信息
	var codes = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l"];
	var length = 6; //验证码长度
	var validate = "";
	console.log(codes.length);
	for(var i = 0;i < length;i++){
		var index = Math.round(Math.random() * 10 + Math.random() * 10);
		validate += codes[index];
	}
	console.log(validate);
});