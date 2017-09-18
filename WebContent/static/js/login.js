$(function(){
	var $userTitle = $("#userTitle");
	var $inputText = $("#userText");

	$("#forget").click(function(){
		if($("#userText").val() == ""){
			alert("请先填写用户名");
			return false;
		}
		$("#forPassUname").html($("#userText").val());
		$("#forPass").fadeIn();
        findUserMail();
	});

	$("#del").click(function(){
		$("#forPass").fadeOut();
		$("#hiddenEmail").html("");
	});

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

	//查找用户邮箱
	var host = window.location.href;
	var pathname = window.location.pathname;
	var localhost = host.substring(0, host.indexOf(pathname));
	while(pathname.lastIndexOf("/")){
        pathname = pathname.substring(0, pathname.lastIndexOf("/"));
	}
	var hostHref = localhost + pathname; //服务根路径

	function findUserMail(){
        $.ajax({
            type:"GET",
            url:hostHref + "/findMail",
            data:"userName=" + $("#forPassUname").html(),
            dataType:"text",
            success:function(result){
                var userEmail;
            	if(result == ""){
                    $("#SendCode").prop("disabled", "disabled");
                    userEmail = "你的邮箱不存在哦。";
				}else{
            		$("#SendCode").removeAttr("disabled");
                    var emailValue = result.substring(0, result.indexOf("@"));
                    var emailType = result.substr(result.indexOf("@"));
                    var numArr = emailValue.split("");
                    for(var i = 0;i<numArr.length;i++){
                        if(i != 0 && i != numArr.length - 1){
                            numArr[i] = "*";
                        }
                    }
                    var newEmailValue = numArr.join("");//将数组转换成字符串
                    userEmail = newEmailValue + emailType;
				}
                $("#sl").html("");
                $("#showMail").stop(true).animate({
                    opacity:1
                }, function(){
                    $("#hiddenEmail").html(userEmail);
                });
            }
        });
	}

	//发送邮件信息
	var codes = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l"];
	var length = 6; //验证码长度
	var validate = "", time, second = 10;
	var SendCode = $("#SendCode");

	$("#SendCode").click(function(){
		$("#validateMail").fadeIn(0);
		validate = "";
        for(var i = 0;i < length;i++){
            var index = Math.round(Math.random() * 10 + Math.random() * 10);
            validate += codes[index];
        }
        $(this).html("重新发送"+ second-- + "s").prop("disabled", "disabled");
        time = setTimeout(SendTel, 1000);
		$.ajax({
			type:"GET",
			url:hostHref + "/findMail",
            data:"userName=" + $("#forPassUname").html(),
			success:function(data){
				$.ajax({
					type:"GET",
					url:hostHref + "/SendMail",
					data:"mail=" + data + "&validate=" + validate,
					success:function(resultData){
						console.log(resultData);
					}
				});
			}
		});
	});
    function SendTel(){
        SendCode.html("重新发送"+ second-- + "s");
        if(second == -1){
            second = 10;//重置发送时间
            SendCode.html("发送验证码").removeAttr("disabled");
            clearTimeout(time);
        }else{
            time = setTimeout(SendTel, 1000);
        }
    }

    //验证码邮箱验证码
	var valMailBtn= $("#validateMail button");
	valMailBtn.click(function(){
		var mailCode = $("#mailValue").val() == "" ? "" : $("#mailValue").val();
		if(mailCode != ""){
			$.ajax({
				type:"POST",
				url:hostHref + "/ChangePass",
				data:"mailCode=" + mailCode,
				success:function(result){
					if(result == 1){
						window.location.href = hostHref + "/pages/register";
					}else{
						alert("验证错误，请重试。");
					}
				}
			});
		}else{
			alert("验证码不能为空\n请重新验证！");
		}
	});
});