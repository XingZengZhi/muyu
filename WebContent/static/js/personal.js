/**
 * Created by 94404 on 2017/9/15.
 */
$(document).ready(function(){
    var $headerFile = $("#headerFile");
    $headerFile.change(headerFileImage);
    //判断是否为IE
    function isIE(){
        if(window.ActiveXObject || "ActiveObject" in window){
            return true;
        }else{
            return false;
        }
    }
    //判断头像文件大小和类型
    function headerFileImage(){
        var t = document.getElementById("headerFile");
        var fileSize = 0;
        if(isIE() && !t.files){
            var filePath = t.value;
            var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
            var file = fileSystem.GetFile(filePath);
            fileSize = file.size;
        }else{
            fileSize = t.files[0].size;
        }
        var size = fileSize / 1024;
        if(size > 3000){
            alert("图片不能超过3M");
            t.value = "";
            return;
        }
        console.log(size);
        var name = t.value;
        var fileName = name.substring(name.lastIndexOf(".") + 1).toLowerCase();
        console.log(fileName);
        if(fileName !="jpg" && fileName !="jpeg" && fileName !="png"){
            alert("请选择正确的格式！");
            t.value = "";
            return;
        }else{
            // var headerFile = document.getElementById("headerFile");
            var formData = new FormData($("#headerForm")[0]);
            formData.append("headerFile", t);
            formData.append("userphone", $("#UserPhone").html());
            $.ajax({
                url:'../../uploadHeader',
                type:'POST',
                data:formData,
                contentType:false,  //必须false才会自动加上正确的Content-type
                processData:false,  //避开JQuery自动对formData的处理
                success: function (data) {
                    var headerSrc = $(".UserHeader img").attr("src");
                    var newSrc = headerSrc.substring(0, headerSrc.lastIndexOf("/") + 1) + data;
                    $(".UserHeader img").attr("src", newSrc);
                    $("#headerImage img").attr("src", newSrc);
                },
            });

        }
    }

    var $baseItem1 = $(".base-item1");
    var $baseItem2 = $(".base-item2");
    var $baseItem3 = $(".base-item3");
    var $baseItem4 = $(".base-item4");
    var $ConfirmNickName = $("#ConfirmNickName");
    var $ConfirmPass = $("#ConfirmPass");
    var $ConfirmMail = $("#ConfirmEmail");
    var $Mask = $("#MaskBox");
    var $cha =$(".cha");
    var NewNickName = "", NewPass = "";
    var $sendMailBtn = $(".sendMailBtn");
    var $sendPhoneBtn = $(".sendPhoneBtn");
    var $sendPhone = $(".sendPhone");
    var $ConfirmPhone = $("#ConfirmPhone");

    $baseItem1.click(ShowMask);
    $baseItem2.click(ShowMask);
    $baseItem3.click(ShowMask);
    $baseItem4.click(ShowMask);
    $cha.click(HideCha);
    $ConfirmNickName.click(SubmitNewNickName);
    $ConfirmPass.click(SubmitNewPass);
    $ConfirmMail.click(SubmitNewMail);
    $sendMailBtn.click(sendEmail);
    $sendPhoneBtn.click(sendPhone);
    $ConfirmPhone.click(SubmitNewPhone);

    //发送验证码
    var code = "";
    function sendPhone(){
        for(var i = 0;i<6;i++){
            code += Math.round(Math.random() * 10);
        }
        $.ajax({
            type:"post",
            url:"https://sms.yunpian.com/v2/sms/single_send.json",
            data:{
                "apikey":"5da4b4fe0e2007bbe0d38be7934be81c",
                "text":"【倾城科技】您的验证码是"+ code +"。如非本人操作，请忽略本短信",
                "mobile":$(".NewPhone").val()
            },
            dataType:"json",
            success:function(data){
                console.log(data);
            }
        });
    }

    //提交修改
    function SubmitNewPhone(){
        console.log(code);
        if($sendPhone.val() == code){
            console.log("验证码相同");
            $.ajax({
                type:"POST",
                data:"NewPhone=" + $(".NewPhone").val() + "&phone=" + $("#UserPhone").html(),
                url:"../../SettingNewPhone",
                success:function(result){
                    if(result == 1){
                        $(".codeTip").fadeIn(400).html("修改联系成功！");
                        setTimeout(function(){
                            $(".codeTip").fadeOut(400);
                        },1000);
                    }
                    $Mask.fadeOut(400);
                    $(".NewPhone").val("");
                    $(".sendPhone").val("");
                }
            });
        }else{
            console.log("不相同");
        }
    }

    //修改邮箱
    function SubmitNewMail(){
        if($(".NewEmail").val() == ""){
            alert("不能为空，请重新输入");
            return;
        }
        var validate = $(".sendMail").val();
        var code = $(".code").html();
        if(validate == code){//判断输入的验证码是否和服务器返回的验证码相等
            //若相等则向服务器修改邮箱
            var NewEmail = $(".NewEmail").val();
            $.ajax({
                type:"POST",
                data:"NewEmail=" + NewEmail + "&phone=" + $("#UserPhone").html(),
                url:"../../SettingNewEmail",
                success:function(result){
                    if(result == 1){
                        $(".codeTip").fadeIn(400).html("修改邮箱成功！");
                        setTimeout(function(){
                            $(".codeTip").fadeOut(400);
                        },1000);
                    }
                    $Mask.fadeOut(400);
                    $(".sendMail").val("");
                    $(".code").html("");
                }
            });
            $(".codeTip").fadeOut(400);
        }else{
            $(".codeTip").fadeIn(400).html("验证码错误，请重试！");
        }
    }
    //发送验证码
    function sendEmail(){
        if($(".NewEmail").val() == ""){
            alert("不能为空，请重新输入");
            return;
        }
        $sendMailBtn.off('click');
        $.ajax({//为新邮箱发送验证码并返回
            type:"POST",
            data:"email=" + $(".NewEmail").val(),
            url:"../../NewEmail",
            success:function(result){
                $(".code").html(result);
            }
        });
        var count = 10;
        var time = setTimeout(opentime, 1000);
        function opentime(){
            $sendMailBtn.html(count + "s 重新发送");
            if(count == 0){
                $sendMailBtn.html("发送验证码");
                $sendMailBtn.on('click', sendEmail);
                clearTimeout(time);
                return;
            }
            count--;
            time = setTimeout(opentime, 1000);
        }
    }

    function ShowMask(e){
        $Mask.fadeIn(400);
        var itemName = e.target.className.split(" ")[1];
        if(itemName == "base-item1"){
            $(".SettingNickName").fadeIn(400).siblings().fadeOut(0);
        }else if(itemName == "base-item2"){
            $(".SettingPhone").fadeIn(400).siblings().fadeOut(0);
        }else if(itemName == "base-item3"){
            $(".SettingEmail").fadeIn(400).siblings().fadeOut(0);
        }else{
            $(".SettingPass").fadeIn(400).siblings().fadeOut(0);
        }
    }

    function HideCha(){
        $Mask.fadeOut(400);
    }
    //修改昵称
    function SubmitNewNickName(){
        NewNickName = $(".NewUserNickName").val();
        $.ajax({
            type:"POST",
            data:"NickName=" + NewNickName + "&userid=" + $("#UserId").html(),
            url:"../../NewNickName",
            success:function(result){
                if(result == 1){
                    $("#UserAccount").html(NewNickName);
                    $("#MaskBox").fadeOut(400);
                }
            }
        });
    }
    //修改密码
    function SubmitNewPass(){
        NewPass = $(".NewPass").val();
        $.ajax({
            type:"POST",
            data:"NewPass=" + NewPass + "&userphone=" + $("#UserPhone").html(),
            url:"../../NewPass",
            success:function(result){
                if(result == 1){
                    $("#resultTip").fadeIn(0);
                }else{
                    $("#resultTip").html("修改失败，请重试。").fadeIn(0);
                }
                setTimeout(function(){
                    $("#resultTip").fadeOut(0);
                    $("#MaskBox").fadeOut(400);
                },1000);
            }
        });
    }
});