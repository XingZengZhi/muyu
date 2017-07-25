$(function(){
	var inpFile =  $(".uploadBox form input[type='file']");
	var startUpload = $(".startUpload");
	inpFile.change(function(){
		startUpload.fadeIn(0).css("display", "inline-block");
	});
	startUpload.on("click", function(){
		$(".uploadBox form").submit();
	});
});