<%--
  Created by IntelliJ IDEA.
  User: Ben
  Date: 2017/7/20
  Time: 11:47
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<img src="${pageContext.request.contextPath }/static/img/qc-index-logo.png" title="logo" />
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/pages/register" target="_self">注册</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/pages/login">登录</a>
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
