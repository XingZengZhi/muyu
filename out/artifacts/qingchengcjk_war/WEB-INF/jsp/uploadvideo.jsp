<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/uploadvideo.css">
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/uploadvideo.js"></script>
<title>视频上传</title>
</head>
<body>
	<div id="max_box">
        <div id="head_box" class="clearfix">
            <jsp:include page="head.jsp" />
        </div>

		<div>
			<%--相关信息--%>
			<form action="" class="personalMsg">
				<ul>
					<li>
						<span class="personalMsg-title">投放地址</span>
						<span class="personalMsg-address">请选择地址</span>
						<div class="addressItem">
							<div class="address-item-area" id="area">
							</div>
							<div class="address-item-city" id="city">
							</div>
							<div class="address-item-province" id="province">
							</div>
							<button type="button" class="chooseAddress">确定选择</button>
						</div>
					</li>
					<li>
						<span class="personalMsg-title">投放小区</span>
					</li>
					<li>
						<span class="personalMsg-title">广告类型</span>
						<div class="advCat">
						</div>
					</li>
				</ul>
			</form>
			<%--视频上传--%>
			<div class="uploadBox">
				<div class="uploadBtns">
					<label for="InputFile">上传文件</label>
					<span class="startUpload">开始上传</span>
					<p class="onprogress">
						<span class="onprogress-item"></span>
					</p>
				</div>
				<form class="videoUpload" method="POST" enctype="multipart/form-data">
					<input id="InputFile" type="file" name="videoFile" />
					<input type="submit" value="上传" />
				</form>
			</div>
		</div>
        
		<jsp:include page="footer.jsp" />
		<!-- QQ咨询 -->
		<!-- <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2148688736&site=qq&menu=yes">
			<img src="http://wpa.qq.com/pa?p=2:2148688736:41" />
		</a> -->
    </div>
</body>
</html>