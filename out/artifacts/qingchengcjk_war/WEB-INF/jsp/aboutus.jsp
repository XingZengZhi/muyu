<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="initial-scale=1,user-scalable=yes">
    <title>关于我们</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/AboutUs.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index_style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div id="max_box">
        <div id="head_box">
            <img src="${pageContext.request.contextPath }/static/img/qc-index-logo.png" title="logo" />
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/register" target="_self">注册</a>
                </li>
                <li>
                    <a href="">登录</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/toufang">广告投放</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/aboutus" target="_self">关于我们</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/information" target="_self">资讯</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/works" target="_self">作品</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/pages/index" target="_self">主页</a>
                </li>
            </ul>
        </div>

        <%--关于我们介绍--%>
        <div class="aboutContent">
            <div class="aboutBox">
                <div class="aboutImg">
                    <img src="${pageContext.request.contextPath}/static/img/about_p1.png" alt="">
                </div>
                <div class="aboutTitle">
                    <h1>运营模式</h1>
                    <p>
                        北京晴云科技有限公司成立于2014年，旗下产品一起写是国内唯一可以完整替代google docs的产品，提供多人实时同步协作文档/表格/演示，同时为团队合作提供实时通信服务。在云时代的今天，「一起写OFFICE」希望重新定义office软件——无论是文档协同、笔记信息分享、实时沟通，都可以通过其轻松实现。其创始人团队来自 Google 总部，拥有超过10年的Google工程师开发经验。
                    </p>
                </div>
            </div>

            <div class="aboutBox">
                <div class="aboutTitle">
                    <h1>运营模式</h1>
                    <p>
                        北京晴云科技有限公司成立于2014年，旗下产品一起写是国内唯一可以完整替代google docs的产品，提供多人实时同步协作文档/表格/演示，同时为团队合作提供实时通信服务。在云时代的今天，「一起写OFFICE」希望重新定义office软件——无论是文档协同、笔记信息分享、实时沟通，都可以通过其轻松实现。其创始人团队来自 Google 总部，拥有超过10年的Google工程师开发经验。
                    </p>
                </div>
                <div class="aboutImg">
                    <img src="${pageContext.request.contextPath}/static/img/about_p1.png" alt="">
                </div>

            </div>

            <div class="aboutBox">
                <div class="aboutImg">
                    <img src="${pageContext.request.contextPath}/static/img/about_p1.png" alt="">
                </div>
                <div class="aboutTitle">
                    <h1>运营模式</h1>
                    <p>
                        北京晴云科技有限公司成立于2014年，旗下产品一起写是国内唯一可以完整替代google docs的产品，提供多人实时同步协作文档/表格/演示，同时为团队合作提供实时通信服务。在云时代的今天，「一起写OFFICE」希望重新定义office软件——无论是文档协同、笔记信息分享、实时沟通，都可以通过其轻松实现。其创始人团队来自 Google 总部，拥有超过10年的Google工程师开发经验。
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>