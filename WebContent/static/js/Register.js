/**
 * Created by 94404 on 2017/5/10.
 */
$(function(){
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
    var $inputTxt = $("#register_content input");
    $inputTxt.focus(function(){
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
    //https://api.ucpaas.com/2014-06-30/Accounts/6ca6af04d05a4f22d3b0426194dcf044/Messages/templateSMS?sig={SigParameter}
    var $SendCode = $("#register_content li span button");
    var $telNum = $("#telNum");
    var time, date, nowTime, second = 10;
    $SendCode.click(function(){
        // var tel = $telNum.val();
        $(this).html("重新发送"+ second-- + "s").prop("disabled", "disabled");
        time = setTimeout(SendTel, 1000);
        nowTime = GetTime();
        $.ajax({
            type:"post",
            url:"https://api.ucpaas.com/2014-06-30/Accounts/6ca6af04d05a4f22d3b0426194dcf044/Messages/templateSMS?sig=" +
            hex_md5("944047118@qq.com" + "73d55f5f3e805b71d8d02a51c517380f" + nowTime),
            data:JSON.stringify(GetJsonData()),
            accepts:"application/json",
            contentType:"application/json",
            dataType:"json",
            success:function(data){
                console.log(data);
            }
        });
    });

    function GetJsonData(){
        var templateSMS = {
            // "sig":hex_md5("944047118@qq.com" + "73d55f5f3e805b71d8d02a51c517380f" + GetTime()),
            "Authorization":b64_md5("944047118@qq.com:" + nowTime),
            "appId": "eafe0198eede444a9fa6e0925f928c41",
            "param": "0000",
            "templateId": "110191",
            "to":$telNum.val()
        };
        return templateSMS;
    }
    //返回当前时间戳
    function GetTime(){
        date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hours = date.getHours();
        var m = date.getMinutes();
        var s = date.getSeconds();
        return year + "" + month + "" + day + "" + hours + "" + m + "" + s;
    }

    function SendTel(){
        $SendCode.html("重新发送"+ second-- + "s");
        if(second == -1){
            second = 10;//重置发送时间
            $SendCode.html("发送验证码").removeAttr("disabled");
            clearTimeout(time);
        }else{
            time = setTimeout(SendTel, 1000);
        }
    }
});