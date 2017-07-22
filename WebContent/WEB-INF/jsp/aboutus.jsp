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
            <jsp:include page="head.jsp" />
        </div>

        <%--关于我们介绍--%>
        <div class="aboutContent">
            <div class="leftNav">
                <ul>
                    <li><span>开发团队</span></li>
                    <li><span>广告设计团队</span></li>
                    <li><span>视频设计团队</span></li>
                    <li><span>市场营销团队</span></li>
                    <li><span>策划团队</span></li>
                </ul>
            </div>

            <div class="aboutBox-2">

            </div>

            <div class="aboutBox-1">
                <div class="aboutBox clearfix">
                    <div class="aboutImg">
                        <img src="${pageContext.request.contextPath}/static/img/aboutImg/aboutImg1.png" alt="">
                    </div>
                    <div class="aboutTitle">
                        <h1>云速智能广告共享平台</h1>
                        <p>
                            打造最大的互联网O2O智能传媒、智能广告研发中心。智能广告是以倾城公司研发的互联网广告系统为平台，
                            以人工智能等技术为支撑的新兴广告形态，通过移动端和PC端，将广告制作、投放与互联网相结合，实行线上制作、定向投放
                            和智能管理，为用户提供更加方便、快捷、简单、有效、透明的广告制作与推送服务。
                        </p>
                    </div>
                </div>

                <div class="aboutBox clearfix">
                    <div class="aboutTitle">
                        <h1>建立互联网+广告传媒</h1>
                        <p>
                            智能广告：广告受众识别的智能化，广告发布方式的智能化，广告内容生成的智能化，广告效果监测的智能化。
                            规范广告市场，建立“标准广告”。
                        </p>
                    </div>
                    <div class="aboutImg">
                        <img src="${pageContext.request.contextPath}/static/img/aboutImg/aboutImg1.png" alt="">
                    </div>
                </div>

                <div class="aboutBox clearfix">
                    <div class="aboutImg">
                        <img src="${pageContext.request.contextPath}/static/img/aboutImg/aboutImg1.png" alt="">
                    </div>
                    <div class="aboutTitle">
                        <h1>我们的目标</h1>
                        <p>
                            让每一个客户都能做好自己的生意。通过互联网，将全世界的广告系统相连接，为客户解决异地投放的难题。
                            加速推动企业快速发展，打造企业优良品牌文化。节约用户广告投放成本，解决中、小型企业推广经费不足等问题。
                        </p>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="footer.jsp" />
    </div>
</div>
</body>
</html>