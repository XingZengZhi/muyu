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
});