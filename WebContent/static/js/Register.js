/**
 * Created by 94404 on 2017/5/10.
 */
$(function(){
    var regForm = $("#register_content form");
    var pass = $("input[name='password']");
    var repass = $("input[name='repassword']");
    var telNum = $("input[name='telNum']");
    // 若用户是企业用户
    var userType = $("input[name='UserType']");
    userType.click(function(){
        ChangeStatus($(this).val());
    });
    function ChangeStatus(x){
        if(x == 1){
            $("#UserCom").fadeOut(0);
            $("#UserPos").fadeOut(0);
        }else{
            $("#UserCom").fadeIn(0);
            $("#UserPos").fadeIn(0);
        }
    }
    var inputTxt = $("#register_content input");
    inputTxt.focus(function(){
        //判断是否为电话号输入框
        if($(this).prop("name") == "telNum"){
            //判断两次输入的密码是否一样
            if(!(pass.val() == repass.val())){
                $("#repassTitle").html("* 两次密码不一样").animate({
                    opacity:1
                });
            }
        }
        if(!$(this).parent().next().find("button").length){
            $(this).parent().next().animate({
                opacity:1
            });
        }
    }).blur(function(){
        if(!$(this).parent().next().find("button").length){
            $(this).parent().next().animate({
                opacity:0
            });
        }
    });
    //发送验证码
    var SendCode = $("#register_content li span button");
    var time, date, code = "", second = 10;
    SendCode.click(function(){
        $(this).html("重新发送"+ second-- + "s").prop("disabled", "disabled");
        time = setTimeout(SendTel, 1000);
        for(var i = 0;i<4;i++){
            code += Math.round(Math.random() * 10);
        }
        $.ajax({
            type:"post",
            url:"https://sms.yunpian.com/v2/sms/single_send.json",
            data:{"apikey":"5da4b4fe0e2007bbe0d38be7934be81c","text":"【倾城科技】您的验证码是"+ code +"。如非本人操作，请忽略本短信","mobile":telNum.val()},
            dataType:"json",
            success:function(data){
                console.log(data);
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

    //校验输入的格式
    var check = {
        //校验密码：只能输入6-20个字母、数字、下划线
        isPasswd:function(s){
            var patrn=/^(\w){6,20}$/;
            if (!patrn.exec(s)) return false;
            return true;
        },
        //校验手机号码：必须以数字开头，除数字外，可含有“-”
        isMobile:function(s){
            var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
            if (!patrn.exec(s)) return false;
            return true;
        }
    }

    telNum.change(function(){
        console.log($(this).val());
        if(check.isMobile($(this).val())){
            SendCode.removeProp("disabled");
        }
    });

    regForm.submit(function(){
        if(check.isPasswd(pass.val())){
            console.log("可以提交");
            return false;
        }else{
            console.log("不能提交");
            return false;
        }
    });

});