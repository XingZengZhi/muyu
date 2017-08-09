$(function(){
    var $as = $(".userInfo a");
    var aArray = new Array($as.length);
    var i = 0;
    while(aArray.length > i){
        aArray[i] = i + 1;
        i++;
    }
    $.each($as, function(i, n){
        $(n).click(function(){
            $.each($(".managers div"), function(j, m){
                $(m).stop(true, true).animate({
                    left:(j - i) * 100 + '%'
                });
            });
        });
    });
});