<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>会员注册</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/register.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/Register.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/md5.js"></script>
	</head>

	<body>
		<div id="register_box">
			<div id="register_head">
				<h3>
					<img src="${pageContext.request.contextPath }/static/img/qc-register-logo.png" alt="注册"/>
				</h3>
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/pages/index" target="_self">首页</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/pages/login">登录</a>
					</li>
				</ul>
			</div>
			<div id="register_content">
				<form action="${pageContext.request.contextPath}/forms/registerForm" method="post">
					<ul>
						<li>
							<span>账户设置</span>
							<span style="color:#7F7F7F;font-size: 12px;margin-left:10px;">设置手机号码和密码用于登录</span>
						</li>
						<li>
							<span>
								登录密码
							</span>
							<span>
								<input type="password" name="password" id="" placeholder="输入密码" />
							</span>
							<span>
								* 6-12位，避免数字开头和使用特殊字符
							</span>
						</li>
						<li>
							<span>
								密码确认
							</span>
							<span>
								<input type="password" name="repassword" placeholder="再次输入密码" />
							</span>
							<span id="repassTitle">
								* 请再次输入你的密码
							</span>
						</li>

						<li>
							<span style="color:black;font-weight: bold;">基本信息</span>
							<span style="color:#7F7F7F;font-size: 12px;margin-left:10px;">请输入真实信息，以便联系</span>
						</li>
						<li>
							<span>
								手机号
							</span>
							<span>
								<input type="text" id="telNum" name="telNum" placeholder="便于联系或通知" />
							</span>
						</li>
						<li>
							<span>
								验证码
							</span>
							<span style="width:90px;">
								<input style="width:90px;" type="text" name="code" />
							</span>
							<span style="opacity:1;">
								<button type="button" disabled="disabled">发送验证码</button>
							</span>
						</li>
						<li>
							<input type="submit" value="确认" />
						</li>
					</ul>
				</form>
			</div>
			<!--页脚信息-->
			<jsp:include page="footer.jsp" />
		</div>
	</body>

</html>