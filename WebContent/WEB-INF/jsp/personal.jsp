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
                    <img src="${pageContext.request.contextPath}/static/img/UserHeaderImage/${LoginUser.userHeader}" alt="">
                </div>
                <div id="uploadBtn">
                    <form id="headerForm" enctype="multipart/form-data">
                        <input type="file" id="headerFile" name="headerFile" accept="image/*" />
                    </form>
                    <label for="headerFile" type="button" id="settingHead">设置头像</label>
                    <p id="headerTip">JPG或PNG格式，最大3MB，不支持GIF。120*120像素最佳</p>
                </div>
                <div id="UserMessage">
                    <p id="UserId">${LoginUser.userID}</p>
                    <p>昵称：<span id="UserAccount">${LoginUser.userAccount}</span></p>
                    <p>联系电话：<span id="UserPhone">${LoginUser.userPhone}</span></p>
                    <p>邮箱：<span>${LoginUser.userEmail}</span></p>
                </div>
                <%--最近浏览--%>
                <div id="RecentBrowse">
                    <p>
                        <span class="item-grow1">编号</span>
                        <span class="item-grow2">地址</span>
                        <span class="item-grow3">价格</span>
                        <span class="item-grow4">浏览时间</span>
                    </p>
                </div>
                <div id="SettingMessage">
                    <button type="button" class="message-base base-item1">昵称设置</button>
                    <button type="button" class="message-base base-item2">联系修改</button>
                    <button type="button" class="message-base base-item3">邮箱设置</button>
                    <button type="button" class="message-base base-item4">密码修改</button>
                </div>
            </div>

            <div id="MaskBox">
                <%--昵称设置--%>
                <div class="SettingNickName">
                    <blockquote class="quoteItem1">
                        <span class="nickName">昵称设置</span>
                        <span class="cha">×</span>
                    </blockquote>
                    <div class="ChangeNickName">
                        <input type="text" maxlength="16" class="NewUserNickName" />
                        <button type="button" id="ConfirmNickName" class="quoteItem1">确认修改</button>
                    </div>
                </div>
                    <%--联系修改--%>
                <div class="SettingPhone">
                    <blockquote class="quoteItem2">
                        <span class="nickName">联系修改</span>
                        <span class="cha">×</span>
                    </blockquote>
                    <div class="ChangeNickName">
                        <input type="text" maxlength="16" class="NewPhone" />
                        <button type="button" id="ConfirmPhone" class="quoteItem2">确认修改</button>
                    </div>
                </div>

                <%--邮箱设置--%>
                <div class="SettingEmail">
                    <blockquote class="quoteItem3">
                        <span class="nickName">邮箱修改</span>
                        <span class="cha">×</span>
                    </blockquote>
                    <div class="ChangeNickName">
                        <input type="text" maxlength="16" class="NewEmail" />
                        <button type="button" id="ConfirmEmail" class="quoteItem3">确认修改</button>
                    </div>
                </div>

                <%--密码修改--%>
                <div class="SettingPass">
                    <blockquote class="quoteItem4">
                        <span class="nickName">邮箱修改</span>
                        <span class="cha">×</span>
                    </blockquote>
                    <div class="ChangeNickName">
                        <input type="text" maxlength="16" class="NewPass" />
                        <button type="button" id="ConfirmPass" class="quoteItem4">确认修改</button>
                        <p id="resultTip">修改成功，下次登录生效。</p>
                    </div>
                </div>

            </div>

        </div>

        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>
