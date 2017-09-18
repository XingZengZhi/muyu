$(document).ready(function(){
    var $as = $("#head_box ul li > a");
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
    //个人信息
    var $UserBox = $(".UserInfoBox");
    var $UserSetting = $(".UserSetting");
    $UserSetting
        .mouseenter(EnterUserInfo)
        .mouseleave(LeaveUserInfo);
    $UserBox
        .mouseenter(EnterUserInfo)
        .mouseleave(LeaveUserInfo);
    function EnterUserInfo(e){
        $UserBox.fadeIn(0);
    }
    function LeaveUserInfo(e){
        $UserBox.fadeOut(0);
    }
});