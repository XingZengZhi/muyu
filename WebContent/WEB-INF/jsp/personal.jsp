<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes">
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/personal.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/personal.js"></script>
</head>
<body>
    <div class="personalBox">
        <div id="head_box">
            <jsp:include page="head.jsp" />
        </div>

        <div id="personalMessage">
            <div id="headerSetting">
                <div id="headerImage">
                    <img src="${pageContext.request.contextPath}/static/img/UserHeaderImage/header.png" alt="">
                </div>
                <div id="uploadBtn">
                    <form id="headerForm" enctype="multipart/form-data">
                        <input type="file" id="headerFile" name="headerFile" accept="image/*" />
                    </form>
                    <label for="headerFile" type="button" id="settingHead">设置头像</label>
                    <p id="headerTip">JPG或PNG格式，最大3MB，不支持GIF。120*120像素最佳</p>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>
