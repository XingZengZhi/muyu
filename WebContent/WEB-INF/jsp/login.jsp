<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="cache-control" content="no-cache" />
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
        				<input name="account" type="text" placeholder="请输入用户名" id="userText" />
        				<p id="userTitle">*请输入正确的格式</p>
        			</li>
        			<li>
        				<input name="password" type="password" placeholder="请输入密码" />
        				<p></p>
        			</li>
        			<li>
        				<input type="text" id="jcaptcha" maxlength="5" />
        				<img id="CodeImage" title="点击刷新" alt="" src="${pageContext.request.contextPath }/code.jpg" />
        				<p>${fail}</p>
					</li>
        			<li>
        				<input type="submit" value="登录" />
						<a href="javascript:;" id="forget">忘记密码</a>
        			</li>
        		</ul>
        	</form>
        </div>
        <jsp:include page="footer.jsp" />
    </div>

	<div id="forPass">
		<span id="del">
			<i></i>
			<i></i>
		</span>
		<h3>找回密码操作</h3>
		<p id="searchMail">
			查找用户名：<span id="forPassUname"></span> 的邮箱 <span id="sl"></span>
		</p>
		<p id="showMail">
			邮箱为：<span id="hiddenEmail"></span>
		</p>
		<p id="sendMail">
			<input type="text" id="mailValue" />
			<button type="button" id="SendCode">发送验证码</button>
		</p>
		<p id="validateMail">
			<button type="button">验证</button>
		</p>
	</div>
</body>
</html>