<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>资讯</title>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index_style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/information.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div id="max_box">
        <div id="head_box">
            <jsp:include page="head.jsp" />
        </div>

        <div id="information">
            <blockquote>
                <h1>资讯新闻</h1>
            </blockquote>
            <div id="news">
                <div class="news-item">
                    <img src="${pageContext.request.contextPath }/static/img/35435.jpg" />
                    <h3>文章标题文章标题标题</h3>
                    <span>2017-08-31</span>
                    <a href="">
                        北京电通作品《Pocky 百奇-Pocky创享新乐趣》荣获最佳互动创意广告、
                        最佳空间运用、最高荣誉-创作（白金奖）3项大奖。北京电通广告有限公司上海分公司和CDC
                        China荣获Creative Agency of the Year年度创意机构的殊荣.
                    </a>
                </div>

                <div class="news-item">
                    <img src="${pageContext.request.contextPath }/static/img/35435.jpg" />
                    <h3>文章标题文章标题标题</h3>
                    <span>2017-08-31</span>
                    <a href="">
                        北京电通作品《Pocky 百奇-Pocky创享新乐趣》荣获最佳互动创意广告、
                        最佳空间运用、最高荣誉-创作（白金奖）3项大奖。北京电通广告有限公司上海分公司和CDC
                        China荣获Creative Agency of the Year年度创意机构的殊荣.
                    </a>
                </div>

                <div class="news-item">
                    <img src="${pageContext.request.contextPath }/static/img/35435.jpg" />
                    <h3>文章标题文章标题标题</h3>
                    <span>2017-08-31</span>
                    <a href="">
                        北京电通作品《Pocky 百奇-Pocky创享新乐趣》荣获最佳互动创意广告、
                        最佳空间运用、最高荣誉-创作（白金奖）3项大奖。北京电通广告有限公司上海分公司和CDC
                        China荣获Creative Agency of the Year年度创意机构的殊荣.
                    </a>
                </div>

            </div>
        </div>

        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>