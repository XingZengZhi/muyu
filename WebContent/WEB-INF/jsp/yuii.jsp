<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/LocationShow/css/yuii.css">
</head>
<body>
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="white">
        <tr>
            <th>序号</th>
            <th>开始日期</th>
            <th>结束日期</th>
            <th>事项</th>
            <th>客户</th>
            <th>联系电话</th>
            <th>发布人</th>
            <th>发布日期</th>
            <th>备注</th>
        </tr>
        <c:if test="${not empty locals}">
            <c:forEach items="${locals}" var="local" varStatus="status">
                <tr>
                    <td class="cid">${status.count}</td>
                    <td class="time">${local.startTime}</td>
                    <td class="time">${local.endTime}</td>
                    <td class="Metter">
                            ${local.metter}
                    </td>
                    <td class="user">
                            ${local.clientName}
                    </td>
                    <td>
                            ${local.clientPhone}
                    </td>
                    <td class="user">
                            ${local.releaseUser}
                    </td>
                    <td class="time">
                            ${local.releaseTime}
                    </td>
                    <td class="Remarks">
                            ${local.remarks}
                    </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</body>
</html>
