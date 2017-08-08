<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台管理登</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/ht_css/ht_login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/ht_js/ht_login.js"></script>
</head>
<body>
<div class="ht-login-box">
    <form action="" method="post">
        <h2>登录</h2>
        <ul>
            <li>
                <span></span>
                <span>
                <input type="text" name="" />
            </span>
            </li>
            <li>
                <span></span>
                <span>
                <input type="password" name="" />
            </span>
            </li>
            <li>
                <p>
                <span id="remeber">
                    <i></i>
                </span>
                    记住用户名
                </p>
            </li>
            <li>
                <input type="submit" value="登录" id="submit" />
            </li>
        </ul>
    </form>
</div>
</body>
</html>