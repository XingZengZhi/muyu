$(function(){
    var $as = $(".userInfo a");
    var aArray = new Array($as.length);
    var i = 0;
    var $videoBox = $(".videoBox");
    var $videoplay = $(".videoplay");
    while(aArray.length > i){
        aArray[i] = i + 1;
        i++;
    }
    $.each($as, function(i, n){
        $(n).click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $.each($(".managers > div"), function(j, m){
                $(m).stop(true, true).animate({
                    left:(j - i) * 100 + '%'
                });
            });
        });
    });

    $videoBox.click(function(){
        $videoplay.fadeIn(0);
    });
    $("#closeplay").click(function(){
        $videoplay.fadeOut(0);
    });

    //动态添加上传图片
    var m = 1;
    $(".adverImageTitle").click(function(){
        if(m >= 3){
            alert("仅支持最多三张图片的上传。");
            return false;
        }
        $(".adverImageBox").append("<input type='file' name='imageFiles' id='images"+ m +"' style='display: none;' />"+
            "<label class='laBtn' for='images"+ m +"'><i></i><i></i></label>");
        $(".laBtn").click(function(){
            showImage($(this));
        });
        m++;
    });
    $(".laBtn").click(function(){
        showImage($(this));
    });
    function showImage(e){
        document.getElementById(e.attr('for')).onchange=function(){
            var read=new FileReader() // 创建FileReader对像;
            read.readAsDataURL(this.files[0])  // 调用readAsDataURL方法读取文件;
            read.onload=function(){
                var url=read.result  // 拿到读取结果;
                var img=new Image();
                img.src=url;
                img.className = "uploadImage";
                document.getElementById("preview").appendChild(img);
            }
        }
        e.css("display", "none");
    }

    $("#adverAddFrom form").submit(function(){
        var arrray = new Array($("#adverAddFrom form input[type='text']").length);
        $.each($("#adverAddFrom form input[type='text']"), function(i, n){
            arrray[i] = $(n).val();
        })
        for(var j = 0;j < arrray.length;j++){
            if(arrray[j] == "")return false;
        }
        return true;
    });
});