<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MuyuOffice/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MuyuOffice/css/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/yuiiadd.js"></script>
</head>
<body>
<div id="content">
    <blockquote id="TopTitle">
        木鱼Office
    </blockquote>

    <div id="formBox">
        <form action="${pageContext.request.contextPath}/Local/addLocal" method="post">
            <ul>
                <li>
                    <span>客户</span>
                </li>
                <li>
                    <input type="text" id="ClientName" name="ClientName" placeholder="输入客户名称" />
                </li>

                <li>
                    <span>联系电话</span>
                </li>
                <li>
                    <input type="number" id="ClientPhone" name="ClientPhone" placeholder="输入电话号码" />
                </li>

                <li>
                    <span>事项</span>
                </li>
                <li>
                    <textarea id="Metter" name="Metter" cols="45" rows="6" placeholder="输入事项"></textarea>
                </li>

                <li>
                    <span>备注</span>
                </li>
                <li>
                    <textarea id="Remarks" name="Remarks" cols="45" rows="6" placeholder="输入备注"></textarea>
                </li>

                <li>
                    <span>开始、结束日期</span>
                </li>
                <li>
                    <input id="StartTime" type="date" name="StartTime" />
                    -
                    <input id="EndTime" type="date" name="EndTime" />
                </li>

                <li>
                    <span>发布人</span>
                </li>
                <li>
                    <!--<div id="selectUser">-->
                    <!--<input type="text" id="userText" />-->
                    <!--<button type="button">选择</button>-->
                    <!--</div>-->
                    <select name="ReleaseUser">
                        <option value="邢某某" selected="selected">邢某某</option>
                        <option value="刘某某">刘某某</option>
                    </select>
                </li>

                <li>
                    <input type="submit" value="提交" id="yuiiSubmit" />
                </li>
            </ul>

        </form>
    </div>
</div>
</body>
</html>

