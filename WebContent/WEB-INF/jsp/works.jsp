<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>作品展示</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index_style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/works.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/works.js"></script>
</head>
<body>
    <div id="max_box">
        <div id="head_box">
            <jsp:include page="head.jsp" />
        </div>

        <div id="WorkBox">
            <div id="Classify">
                <ul>
                    <li>
                        <a href="#Public">宣传广告</a>
                    </li>
                    <li>
                        <a href="#Multi">多媒体广告</a>
                    </li>
                    <li>
                        <a href="#Video">视频广告</a>
                    </li>
                    <li>
                        <a href="#Flat">平面广告</a>
                    </li>
                </ul>
            </div>

            <div id="WorkContent">
                <div id="Public">
                    <h2 name="Public">
                        宣传广告
                        <a href="#">更多></a>
                    </h2>
                    <div id="publiccontent">
                        <div class="vs">
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v1.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">淮南大数据应用服务中心宣传片</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v2.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">QQ - 上QQ玩AR 用新的方式 迎接世界</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v3.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">小米 MI -  Mi 5X 除了吴亦凡还有变焦双摄</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div id="Multi">
                    <h2>
                        多媒体广告
                        <a href="#">更多></a>
                    </h2>
                    <div id="multicontent">
                        <div class="vs">
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v3.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">小米 MI -  Mi 5X 除了吴亦凡还有变焦双摄</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="Video">
                    <h2>
                        视频广告
                        <a href="#">更多></a>
                    </h2>
                    <div id="videocontent">
                        <div class="vs">
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v3.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">小米 MI -  Mi 5X 除了吴亦凡还有变焦双摄</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="Flat">
                    <h2>
                        平面广告
                        <a href="#">更多></a>
                    </h2>
                    <div id="flatcontent">
                        <div class="vs">
                            <div class="vLink">
                                <a href="#">
                                    <img class="vImg" src="${pageContext.request.contextPath}/static/videoImg/v4.jpg" />
                                </a>
                                <img src="${pageContext.request.contextPath}/static/videoImg/play-hover.png" class="playBtn" />
                                <div class="video-info">
                                    <div class="video-title">
                                        <a href="#">小米 MI -  Mi 5X 除了吴亦凡还有变焦双摄</a>
                                    </div>
                                    <div class="video-plays">
                                        519 次观看
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>