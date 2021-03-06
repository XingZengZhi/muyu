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
    var host = window.location.href;
    var pathname = window.location.pathname;
    var localhost = host.substring(0, host.indexOf(pathname));
    while(pathname.lastIndexOf("/")){
        pathname = pathname.substring(0, pathname.lastIndexOf("/"));
    }
    var hostHref = localhost + pathname; //服务根路径
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
                var divs = document.createElement("div");
                var spans = document.createElement("span");
                var spanTxt = document.createTextNode("删除");
                divs.style.position = "relative";
                divs.style.width = "115px";
                divs.style.height = "95px";
                divs.style.display = "inline-block";
                divs.id = e.attr("for");
                spans.appendChild(spanTxt);
                spans.className = "uploadImageDel";
                divs.appendChild(img);
                divs.appendChild(spans);
                document.getElementById("preview").appendChild(divs);
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

    $(document).on("mouseenter", ".adverImageBox div", function(e){
        $(e.target).siblings("span").fadeIn(0);
    })

    $(document).on("mouseleave", ".adverImageBox div", function(){
        $(".uploadImageDel").fadeOut(0);
    })

    $(document).on("click", ".uploadImageDel", function(e){
        var idv = $(e.target).parent().attr("id");
        $(e.target).parent().siblings("input[id='"+ idv +"']").remove();
        $(e.target).parent().siblings("label[for='"+ idv +"']").remove();
        $(e.target).parent().remove();
        m--;
    });
    console.log(hostHref);
    $.ajax({
        type:"POST",
        url:hostHref + "/adverCount",
        success:function(result){

        }
    });
});