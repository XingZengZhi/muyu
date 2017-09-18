$(function(){
	var inpFile =  $(".uploadBox form input[type='file']");
	var startUpload = $(".startUpload");

	inpFile.change(function(){
		fileChange($(this));
	});
	startUpload.on("click", function(){
	    $(".onprogress").fadeIn(0);
		var fm = new FormData();
		var total = $(".onprogress").width();
		fm.append("videoFile", $("#InputFile")[0].files[0]);
		$.ajax({
			url:"/qingchengcjk/upload",
			type:"post",
			data:fm,
			contentType:false,
			processData:false,
            xhr:xhrOnProgress(function(e){
                var percent = e.loaded / e.total; //计算百分比
                var nowTotal = Math.floor(total * percent);
                $(".onprogress-item").animate({
                    width: nowTotal + 'px'
                });
            }),
			success:function(data){
			    var newSrc = window.location.host + '/qingchengcjk/' + data.replace('\\', '/');
			    console.log(newSrc);
				var video = document.createElement("video");
				video.src = "http://" + newSrc;
				video.controls = "controls";
				video.className = "videoPlay";
				video.preload = "true";
				var videoBox = document.getElementById("videoBox");
				videoBox.appendChild(video);
			}
		});
	});

	var xhrOnProgress = function(fun){
        xhrOnProgress.onprogress = fun; //绑定监听
        //使用闭包实现监听绑定
        return function(){
            //通过$.ajaxSettings.xhr();获得XMLHttpRequest对象
            var xhr = $.ajaxSettings.xhr();
            //判断监听函数是否为函数
            if (typeof xhrOnProgress.onprogress !== 'function'){
                return xhr;
            }
            //如果有监听函数并且xhr对象支持绑定时就把监听函数绑定上去
            if (xhrOnProgress.onprogress && xhr.upload) {
                xhr.upload.onprogress = xhrOnProgress.onprogress;
            }
            return xhr;
        }
    }

    function fileChange(obj){
        var photoExt = obj[0].value.substr(obj[0].value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
        console.log(photoExt);
        if(photoExt !='.mp4'){
            alert("请上传后缀名为mp4的照片!");
            obj[0].value = "";
            return false;
        }
        startUpload.fadeIn(0).css("display", "inline-block");
        var fileSize = 0;
        var isIE = /msie/i.test(navigator.userAgent) && !window.opera;
        if (isIE && !obj.files) {
            var filePath = obj[0].value;
            var fileSystem = new ActiveXObject("Scripting.FileSystemObject");
            var file = fileSystem.GetFile (filePath);
            fileSize = file.Size;
        }else {
            fileSize = obj[0].files[0].size;
        }
        fileSize = Math.ceil(fileSize/1024*100)/102400; //单位为M
        console.log(fileSize);
        if(fileSize>=200){
            alert("视频不能超过200M");
            return false;
        }
    }
    $(".personalMsg-address").click(function(){
        $(".addressItem").fadeIn(0);
    });
    // 显示地址
    $.getJSON("/qingchengcjk/static/JsonData/city.json", function(data){
        var dataLength = data.length;
        //初始化地级市列表
        for(var i = 0;i<dataLength;i++){
            $(".address-item-province").append("<p>"+ data[i].areaName +"</p>");
            if(i == 0){
                $(".address-item-province p").addClass("cityOrAreaActive");
                var cityLength = data[i].cities.length;
                for(var j = 0;j<cityLength;j++){
                    $(".address-item-city").append("<p>"+ data[i].cities[j].areaName +"</p>");
                    if(j == 0){
                        $(".address-item-city p").addClass("cityOrAreaActive");
                        for(var k = 0;k<data[i].cities[j].counties.length;k++){
                            $(".address-item-area").append("<p>"+ data[i].cities[j].counties[k].areaName +"</p>");
                            if(k == 0){
                                $(".address-item-area p").addClass("cityOrAreaActive");
                            }
                        }
                    }

                }
            }
        }
        $(".address-item-city p").on('click', function(event){
            $(this).addClass("cityOrAreaActive").siblings().removeClass("cityOrAreaActive");
            event.stopPropagation();
        })
        $(".address-item-area p").on('click', function(){
            $(this).addClass("cityOrAreaActive").siblings().removeClass("cityOrAreaActive");
            event.stopPropagation();
        })
        //省级点击事件
        $(".address-item-province p").on('click', function(event){
            var idName = event.target.parentNode.id;
            for(var i = 0;i<data.length;i++){
                //清空旧的城市列表
                $(".address-item-city").children("p").remove();
                //判断当前点击的省是否在json数据里
                if(data[i].areaName == event.target.innerHTML){
                    //加入新选择省下的城市列表
                    for(var j = 0;j<data[i].cities.length;j++){
                        $(".address-item-city").append("<p>"+ data[i].cities[j].areaName +"</p>");
                        if(j == 0){
                            $(".address-item-city p").addClass("cityOrAreaActive");
                            $(".address-item-area").children("p").remove();
                            for(var k = 0;k<data[i].cities[j].counties.length;k++){
                                $(".address-item-area").append("<p>"+ data[i].cities[j].counties[k].areaName +"</p>");
                                if(k == 0){
                                    $(".address-item-area p").addClass("cityOrAreaActive");
                                }
                            }
                        }
                        //市级点击事件
                        $(".address-item-city p").on('click', function(event){
                            var cityName = $(this).html();
                            for(var i = 0;i<data.length;i++){
                                for(var j = 0;j<data[i].cities.length;j++){
                                    if(data[i].cities[j].areaName == cityName){
                                        //清除旧的区域列表
                                        $(".address-item-area").children("p").remove();
                                        for(var k = 0;k < data[i].cities[j].counties.length;k++){
                                            $(".address-item-area").append("<p>"+ data[i].cities[j].counties[k].areaName +"</p>");
                                        }
                                        $(".address-item-area p").on('click', function(event){
                                            $(this).addClass("cityOrAreaActive").siblings().removeClass("cityOrAreaActive");
                                            event.stopPropagation();
                                        });
                                        break;
                                    }
                                }
                            }
                            $(this).addClass("cityOrAreaActive").siblings().removeClass("cityOrAreaActive");
                            event.stopPropagation();
                        });

                    }
                    break;
                }
            }
            $(this).addClass("cityOrAreaActive").siblings().removeClass("cityOrAreaActive");
            event.stopPropagation();
        });
    });//获取jsonData结束
    //获取地址
    $(".chooseAddress").click(function(){
        var address = "";
        var addArray = [];
        $.each($(".addressItem div"), function(i, n){
            $.each($(n).children("p"), function(i, n){
                if($(n)[0].className == 'cityOrAreaActive'){
                    addArray.push($(n).html());
                }
            })
        });
        address = addArray.reverse().toString();
        $(".personalMsg-address").html(address).css("color", "#4e4e4e");
        $(".addressItem").fadeOut(0);
    });

    $.getJSON("/qingchengcjk/static/JsonData/release-type.json", function(data){
        for(var i = 0;i < data.length;i++){
            $(".advCat").append("<p>"+ data[i].type +"</p>");
            if(i == 0){
                $(".advCat p").addClass("firstCat");
            }
        }
        $(".advCat p").on('click', function(e){
            if(!e.target.className){
                var oldName = $(".firstCat").html();
                var newName = $(this).html();
                $(".firstCat").html(newName);
                $(this).html(oldName);
            }
        });
    });

    $.getJSON("/qingchengcjk/static/JsonData/release-time.json", function(data){
        times = new Array(data.length);
        for(var i = 0;i < data.length;i++){
            $(".advTime").append("<p>"+ data[i].time +"</p>");
            if(i == 0){
                $(".advTime p").addClass("firstTime");
            }
        }
        $(".advTime p").on('click', function(e){
            if(!e.target.className){
                var oldName = $(".firstTime").html();
                var newName = $(this).html();
                $(".firstTime").html(newName);
                $(this).html(oldName);
                Judgment(newName);
            }
        });
    })

    $(".advCat,.advTime").stop(true,true).mouseenter(function(){
        var height = $(this).children("p:first").height();
        var pcount = $(this).children().length;
        $(this).css("height", height * pcount + 'px');
    }).stop(true,true).mouseleave(function(){
        var height = $(this).children("p:first").height();
        var pcount = $(this).children().length;
        $(this).css("height", height + 'px');
    });


    $(document).click(function(e){
        if(e.target.className != 'personalMsg-address'){
            $(".addressItem").fadeOut(0);
        }
    });
    //监听价格变化
    var count1, count2, totalPrice, days, dayName;
    $("#screenCount,#timeCount").on('input propertychange', function(e){
        if(e.target.id == 'screenCount'){//屏幕个数
            count1 = e.target.value;
            if(count1 == 0){
                return;
            }
            if(count2 != null){
                totalPrice = count1 * count2 * parseInt($(".price span").html());
                $(".allprice").html(totalPrice);
            }
        }else if(e.target.id == 'timeCount'){//时长
            count2 = e.target.value;
            if(count2 == 0){
                return;
            }
            if(count1 != null){
                dayName = $(".firstTime").html();
                console.log(dayName);
                Judgment(dayName);
            }
        }
    });
    function Judgment(dayName){
        var totalPriceDay;
        var count1 = $("#screenCount").val();
        var count2 = $("#timeCount").val();
        if(count1 == null || count2 == null)return;
        if(dayName == '天')days = 1;
        if(dayName == '周')days = 7;
        if(dayName == '月')days = 30;
        if(dayName == '季度')days = 90;
        if(dayName == '年')days = 365;
        totalPriceDay = count1 * count2 * parseInt($(".price span").html()) * days;
        $(".allprice").html(totalPriceDay);
        return totalPriceDay;
    }
});