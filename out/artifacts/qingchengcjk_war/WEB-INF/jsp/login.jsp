<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/reset.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/login.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/login.js"></script>
	<title>登录</title>
</head>
<body>
	<div id="max_box">
        <div id="head_box" class="clearfix">
            <jsp:include page="head.jsp" />
        </div>
        
        <div class="loginBox">
        	<img id="formImage" src="${pageContext.request.contextPath }/static/img/login.jpg" />
        	<form action="${pageContext.request.contextPath }/forms/loginForm" method="POST">
        		<ul>
        			<li>
        				<input type="text" placeholder="请输入用户名" id="userText" />
        				<p id="userTitle">*请输入正确的格式</p>
        			</li>
        			<li>
        				<input type="password" placeholder="请输入密码" />
        				<p></p>
        			</li>
        			<li>
        				<input type="text" id="jcaptcha" />
        				<img id="CodeImage" alt="" src="${pageContext.request.contextPath }/code.jpg" />
        			</li>
        			<li>
        				<input type="submit" value="登录" />
						<a href="" id="forget">忘记密码</a>
        			</li>
        		</ul>
        	</form>
        </div>
        
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>