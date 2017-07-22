<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/webuploader/webuploader.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/webuploader/webuploader.js"></script>
<title>视频上传</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/upload" method="POST" enctype="multipart/form-data">
		<input type="file" name="videoFile" />
		<input type="submit" value="上传" />
	</form>

	<div id="uploader" class="wu-example">
    <!--用来存放文件信息-->
    <div id="list" class="uploader-list"></div>
    <div class="btns">
        <div id="picker">选择文件</div>
        <button id="ctlBtn" class="btn btn-default">开始上传</button>
    </div>
    <!-- <span id="li"></span>
    <p id="percent"></p> -->
    
    <script type="text/javascript">
    	var BASE_URL = window.location.href.substring(0, window.location.href.lastIndexOf("/") - 5);
    	var $list = $("#list");
    	var $btn = $("#ctlBtn");
    	console.log(BASE_URL);
	    var uploader = WebUploader.create({
	        // swf文件路径
	        swf: BASE_URL + 'static/webuploader/Uploader.swf',
	        // 文件接收服务端。
	        server:BASE_URL + 'videoupload',
	        // 选择文件的按钮。可选。
	        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
	        pick: '#picker',
	        // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
	        resize: false
	    });
	    
	 	// 当有文件被添加进队列的时候
	    uploader.on( 'fileQueued', function( file ) {
	        $list.append( '<div id="' + file.id + '" class="item">' +
	            '<h4 class="info">' + file.name + '</h4>' +
	            '<p class="state">等待上传...</p>' +
	        '</div>' );
	    });
	 	// 文件上传过程中创建进度条实时显示。
	    uploader.on( 'uploadProgress', function( file, percentage ) {
	        var $li = $( '#'+file.id ),
	            $percent = $li.find('.progress .progress-bar');
	        // 避免重复创建
	        if ( !$percent.length ) {
	            $percent = $('<div class="progress progress-striped active">' +
	              '<div class="progress-bar" role="progressbar" style="width: 0%">' +
	              '</div>' +
	            '</div>').appendTo( $li ).find('.progress-bar');
	        }
	        $li.find('p.state').text('上传中');
	        $percent.css( 'width', percentage * 100 + '%' );
	    });
	 	//上传成功
	    uploader.on( 'uploadSuccess', function( file ) {
	        $( '#'+file.id ).find('p.state').text('已上传');
	    });
		//上传失败
	    uploader.on( 'uploadError', function( file ) {
	        $( '#'+file.id ).find('p.state').text('上传出错');
	    });
	    uploader.on( 'uploadComplete', function( file ) {
	        $( '#'+file.id ).find('.progress').fadeOut();
	    });
	    
	    $btn.on("click", function(){
	    	uploader.upload();
	    });
    </script>
</div>
</body>
</html>