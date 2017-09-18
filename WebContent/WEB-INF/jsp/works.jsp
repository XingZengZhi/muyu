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
    <script type="text/javascript">
    </script>
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
                    <h2 name="Public">宣传广告</h2>
                    <div id="publiccontent">
                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>

                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>

                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>
                <div id="Multi">
                    <h2>多媒体广告</h2>
                    <div id="multicontent">
                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>
                <div id="Video">
                    <h2>视频广告</h2>
                    <div id="videocontent">
                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>
                <div id="Flat">
                    <h2>平面广告</h2>
                    <div id="flatcontent">
                        <video poster="${pageContext.request.contextPath }/static/video-img/video-png.png" controls="controls" preload="auto">
                            <source src="${pageContext.request.contextPath }/static/video/test.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>