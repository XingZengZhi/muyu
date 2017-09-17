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
            formData.append("userid", $("#UserId").html());
            $.ajax({
                url:'../uploadHeader',
                type:'POST',
                data:formData,
                contentType:false,  //必须false才会自动加上正确的Content-type
                processData:false,  //避开JQuery自动对formData的处理
                success: function (data) {
                    alert(data);
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
    var $ConfirmNickName = $("#ConfirmNickName");
    var $Mask = $("#MaskBox");
    var $cha =$(".cha");
    var NewNickName = "";

    $baseItem1.click(ShowMask);
    $cha.click(HideCha);
    $ConfirmNickName.click(SubmitNewNickName);

    function ShowMask(){
        $Mask.fadeIn(400);
    }

    function HideCha(){
        $Mask.fadeOut(400);
    }
    //修改昵称
    function SubmitNewNickName(){
        NewNickName = $("#NewUserNickName").val();
        $.ajax({
            type:"GET",
            data:"NickName=" + NewNickName + "&userid=" + $("#UserId").html(),
            url:"../NewNickName",
            success:function(result){
                if(result == 1){
                    $("#UserAccount").html(NewNickName);
                    $("#MaskBox").fadeOut(400);
                }
            }
        });
    }
});