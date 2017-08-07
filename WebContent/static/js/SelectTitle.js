/**
 * Created by 94404 on 2017/8/7.
 */
$(function(){
    var $as = $("#head_box a");
    $.each($as, function(i, n){
        if(window.location.pathname == $(n).attr("href")){
            $(n).css({
                color:"white",
                backgroundColor:"#02B2B5"
            }).animate({
                fontSize:20 + 'px'
            });
        }
    })
});