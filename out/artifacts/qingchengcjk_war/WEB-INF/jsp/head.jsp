<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/SelectTitle.js"></script>
<img src="${pageContext.request.contextPath }/static/img/qc-index-logo.png" title="logo" />
<ul>
    <c:if test="${not empty LoginUser}">
        <li>
            <div class="UserSetting">
                <div class="UserHeader">
                    <img src="${pageContext.request.contextPath}/static/img/UserHeaderImage/header.png" alt="">
                </div>
            </div>

            <div class="UserInfoBox">
                <p>
                    <img src="${pageContext.request.contextPath}/static/img/IconImage/xfjl.png" />
                    <a href="#">消费记录</a>
                </p>
                <p>
                    <img src="${pageContext.request.contextPath}/static/img/IconImage/cpxf.png" />
                    <a href="#">产品续费</a>
                </p>
                <p>
                    <img src="${pageContext.request.contextPath}/static/img/IconImage/wzfdd.png" />
                    <a href="#">未支付订单</a>
                </p>
                <a href="${pageContext.request.contextPath}/UserExit" class="exit">退出</a>
            </div>
        </li>
    </c:if>
    <c:if test="${empty LoginUser}">
        <li>
            <a href="${pageContext.request.contextPath}/pages/register" target="_self">注册</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/pages/login">登录</a>
        </li>
    </c:if>
    <li>
        <a href="${pageContext.request.contextPath}/pages/aboutus" target="_self">关于我们</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/pages/toufang">广告投放</a>
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
