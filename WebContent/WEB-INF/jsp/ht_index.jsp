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
            <a href="javascript:;" id="videoMan" class="active">视频管理</a>
            <a href="javascript:;" id="adverMan">广告位管理</a>
            <a href="javascript:;" id="userMan">用户管理</a>
            <img src="${pageContext.request.contextPath}/static/ht_image/user_header.png" alt="" />
        </div>

        <div class="managers">
            <div class="videoManager clearfix">
                <div class="videoItem">
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                </div>

                <div class="videoItem">
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                    <div class="videoBox">
                        <img src="${pageContext.request.contextPath}/static/ht_image/ht-video-img1.jpg" alt="">
                        <p>
                            上传用户：test
                        </p>
                        <p>
                            上传时间：2017-8-15
                        </p>
                        <p>
                            状态：未审核
                        </p>
                    </div>
                </div>

            </div>
            <div class="adverManager">
                <div id="adverTable">
                    <div class="tableHeader">
                        <p>
                            <span>ID</span>
                            <span>地址</span>
                            <span>价格</span>
                            <span>搭建时间</span>
                            <span>操作</span>
                        </p>
                    </div>
                    <div class="tableItem">
                        <p>
                            <span>1</span>
                            <span title="贵州遵义新浦新区贵州遵义新浦新区贵州遵义新浦新区贵州遵义新浦新区">
                                贵州遵义新浦新区贵州遵义新浦新区贵州遵义新浦新区贵州遵义新浦新区
                            </span>
                            <span>
                                50元/日
                            </span>
                            <span>
                                2017-07-17
                            </span>
                            <span>
                                <a href="">删除</a>
                                <a href="">修改</a>
                                <a href="">详细信息</a>
                            </span>
                        </p>
                    </div>
                </div>
                <div id="adverAddFrom">
                    <h3>添加广告位</h3>
                    <form action="${pageContext.request.contextPath}/addAdver" method="post" enctype="multipart/form-data">
                        <ul>
                            <li>
                                <p>地址</p>
                                <input type="text" name="AdverAddress" />
                            </li>
                            <li>
                                <p>价格</p>
                                <input type="text" name="AdverMarketPrice" />
                            </li>
                            <li>
                                <p>使用次数</p>
                                <input type="text" name="AdverNumber" />
                            </li>
                            <li>
                                <p>描述</p>
                                <textarea name="AdverDescribe" id="" cols="40" rows="10" maxlength="240"></textarea>
                            </li>
                            <li>
                                <p>搭建时间</p>
                                <input type="date" name="AdverSetUp" />
                            </li>
                            <li>
                                <p class="adverImageTitle">添加位置图片</p>
                                <div class="adverImageBox clearfix" id="preview">
                                    <%--<img src="" id="dd" class="uploadImage">--%>
                                    <input type="file" name="imageFiles" id="images0" style="display: none;" />
                                    <label class="laBtn" for="images0"><i></i><i></i></label>
                                </div>
                                <script type="text/javascript">

                                </script>
                            </li>
                            <li>
                                <input type="submit" value="添 加" />
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
            <div class="userManager">
                <div class="userTable">
                    <div class="tableHeader">
                        <p>
                            <span>ID</span>
                            <span>用户名称</span>
                            <span>联系电话</span>
                            <span>类型</span>
                            <span>操作</span>
                        </p>
                    </div>
                    <div class="tableItem">
                        <p>
                            <span>1</span>
                            <span>
                                邢增智
                            </span>
                            <span>
                                18285017634
                            </span>
                            <span>
                                管理员
                            </span>
                            <span>
                                <a href="">删除</a>
                                <a href="">修改</a>
                                <a href="">详细信息</a>
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="videoplay">
            <p>
                <span id="closeplay">
                    <i></i>
                    <i></i>
                </span>
            </p>
            <video src="" controls></video>
            <p>
                <button type="button">审核通过</button>
                <button type="button">撤销退回</button>
            </p>
        </div>
    </div>
</body>
</html>
