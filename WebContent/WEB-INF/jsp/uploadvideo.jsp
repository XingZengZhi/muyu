<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/uploadvideo.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/uploadvideo.js"></script>
<title>视频上传</title>
</head>
<body>
	<div id="max_box">
        <div id="head_box" class="clearfix">
            <jsp:include page="head.jsp" />
        </div>
        
        <div class="uploadBox">
	        <div class="uploadBtns">
	        	<label for="InputFile">上传文件</label>
	        	<span class="startUpload">开始上传</span>
	        	<span class="">预览</span>
	        </div>
        	
        	<form action="${pageContext.request.contextPath }/upload" method="POST" 
						enctype="multipart/form-data">
				<input id="InputFile" type="file" name="videoFile" accept="video/*" onchange="fileChange(this)" />
				<input type="submit" value="上传" />
			</form>
        </div>
		
		<!-- QQ咨询 -->
		<!-- <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2148688736&site=qq&menu=yes">
			<img src="http://wpa.qq.com/pa?p=2:2148688736:41" />
		</a> -->
    </div>
	<script type="text/javascript">
		function fileChange(obj){
			photoExt=obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
			console.log(photoExt);
		    if(photoExt !='.mp4'){
		        alert("请上传后缀名为mp4的照片!");
		        obj.value = "";
		        return false;
		    }
		    var fileSize = 0;
		    var isIE = /msie/i.test(navigator.userAgent) && !window.opera;            
		    if (isIE && !obj.files) {          
		         var filePath = obj.value;            
		         var fileSystem = new ActiveXObject("Scripting.FileSystemObject");   
		         var file = fileSystem.GetFile (filePath);               
		         fileSize = file.Size;         
		    }else {  
		         fileSize = obj.files[0].size;     
		    }
		    fileSize=Math.ceil(fileSize/1024*100)/102400; //单位为M
		    console.log(fileSize);
		    if(fileSize>=200){
		        alert("视频不能超过200M");
		        return false;
		    }
		}
	</script>
</body>
</html>