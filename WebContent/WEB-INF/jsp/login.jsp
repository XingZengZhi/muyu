<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        	<img src="${pageContext.request.contextPath }/static/img/login.jpg" />
        	<form action="" method="POST">
        		<ul>
        			<li>
        				<input type="text" placeholder="请输入用户名" />
        				<p id="userTitle">该用户名不存在</p>
        			</li>
        			<li>
        				<input type="password" placeholder="请输入密码" />
        				<p></p>
        			</li>
        			<li>
        				<input type="submit" value="确认登录" />
        			</li>
        		</ul>
        	</form>
        </div>
        
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>