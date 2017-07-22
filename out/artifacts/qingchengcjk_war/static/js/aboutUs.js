$(function(){
    var leftNav = $(".leftNav li");
    leftNav.click(function(){
        var className = $(this).children("span").prop("id");
        $("." + className).fadeIn().siblings(":not(.leftNav)").fadeOut();
    });
});