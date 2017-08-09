<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理系统主页</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/ht_css/ht_index.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/ht_js/ht_index.js"></script>
</head>
<body>
    <div class="content">
        <div class="userInfo">
            <a href="javascript:;" id="videoMan">视频管理</a>
            <a href="javascript:;" id="adverMan">广告位管理</a>
            <a href="javascript:;" id="userMan">用户管理</a>
            <img src="${pageContext.request.contextPath}/static/ht_image/user_header.png" alt="" />
        </div>

        <div class="managers">
            <div class="videoManager">

            </div>
            <div class="adverManager">

            </div>
            <div class="userManager">

            </div>
        </div>
    </div>
</body>
</html>
