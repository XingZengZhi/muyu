<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
<title>视频上传</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/upload" method="POST" 
	enctype="multipart/form-data">
		<input type="file" name="videoFile" accept="video/*" onchange="fileChange(this)" />
		<input type="submit" value="上传" />
	</form>
	
	<script type="text/javascript">
	function fileChange(e){
		console.log(e.target);
		/* var file = e.target.files[0];
		var type = file.type.split('/')[0]; */
		/* console.log(type); */
	}
		
	</script>
	
	<!-- QQ咨询 -->
	<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2148688736&site=qq&menu=yes">
		<img src="http://wpa.qq.com/pa?p=2:2148688736:41" />
	</a>
</body>
</html>