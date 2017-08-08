$(function(){
    var i = $("#remeber i");
    i.click(function(){
        if(parseInt($(this).css("left")) == 0){
            $(this).animate({
                left:50 + '%'
            }, function(){
                $(this).parent().css({
                    backgroundColor:"#EB8B39"
                });
            })
        }else{
            $(this).animate({
                left:0 + '%'
            }, function(){
                $(this).parent().css({
                    backgroundColor:"white"
                });
            });
        }
    });
});