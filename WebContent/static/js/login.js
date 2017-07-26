$(function(){
	var $userTitle = $("#userTitle");
	var $inputText = $(".loginBox form input[type='text']");
	
	$inputText.focus(function(){
		$userTitle.stop(true).animate({
			opacity:1,
			marginLeft:25 + 'px'
		});
	}).blur(function(){
		$userTitle.stop(true).animate({
			opacity:0,
			marginLeft:0 + 'px'
		});
	});
	
});