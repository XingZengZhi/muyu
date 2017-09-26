/**
 * Created by 94404 on 2017/9/26.
 */
$(document).ready(function(){
    var $VlinkA = $(".vLink");
    var $PlayBtn = $(".playBtn");
    $VlinkA.mouseenter(VlinkAEnter)
        .mouseleave(VlinkALeave);
    $PlayBtn.mouseenter(PlayBtnEnter)
        .mouseleave(PlayBtnLeave);
    function VlinkAEnter(){
        $(this).children(".playBtn").stop(true,true).fadeIn(400);
        $(this).children("a").children(".vImg").css({
            'transform':'scale(1.1,1.1)'
        });
    }
    function VlinkALeave(){
        $(this).children(".playBtn").stop(true,true).fadeOut(400);
        $(this).children("a").children(".vImg").css({
            'transform':'scale(1,1)'
        });
    }
    function PlayBtnEnter(){
        $(this).stop(true,true)
            .fadeIn(0)
            .siblings("a")
            .children("img")
            .animate({},function(){
                $(this).css({
                    'transform':'scale(1.1,1.1)'
                });
            });
        $(this).attr("src", "../static/videoImg/red-play-btn.png")
            .css({
                "transition":"all 0.3s",
                "transform":"scale(1.1,1.1)"
            });
    }
    function PlayBtnLeave(){
        $(this).attr("src", "../static/videoImg/play-hover.png")
            .css({
                "transition":"none",
                "transform":"scale(1,1)"
            });
    }
});