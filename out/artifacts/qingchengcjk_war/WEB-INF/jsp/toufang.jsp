<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="description" content="广告投放">
    <title>广告投放</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/toufang.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/toufang.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index_style.css" />
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
  </head>
  <body>
    <div id="head_box">
      <jsp:include page="head.jsp" />
    </div>
    <div class="all">
      <!-- 类型选择 -->
      <section>
        <div class="cat-box">
          <div class="cat-content">
            <p>请选择类型</p>
          </div>
          <div class="cat-btn">
            <button type="button" name="button"><i class="up"></i></button>
          </div>
          <div class="cat-choose">
            <p>视频广告</p>
            <p>平面广告</p>
          </div>
        </div>
      </section>
      <!-- 地区选择 -->
      <div class="address-box">
        <!-- 省 -->
        <div class="address-item clearfix">
          <div>省：</div>
          <div>
            <ul>
              <li>贵州</li>
            </ul>
          </div>
        </div>
        <!-- 市 -->
        <div class="address-item clearfix">
          <div>市：</div>
          <div>
            <ul>
              <li>贵阳市</li>
              <li>遵义市</li>
            </ul>
          </div>
        </div>
        <!-- 区 -->
        <div class="address-item clearfix">
          <div>区：</div>
          <div>
            <ul>
              <li>红花岗区</li>
              <li>汇川区</li>
              <li>播州区</li>
              <li>新浦新区</li>
            </ul>
          </div>
        </div>
        <!-- 县 -->
        <div class="address-item clearfix">
          <div>县：</div>
          <div>
            <ul>
              <li>桐梓县</li>
              <li>绥阳县</li>
              <li>正安县</li>
              <li>凤冈县</li>
              <li>湄潭县</li>
              <li>余庆县</li>
              <li>习水县</li>

              <li>桐梓县</li>
              <li>绥阳县</li>
              <li>正安县</li>
              <li>凤冈县</li>
              <li>湄潭县</li>
              <li>余庆县</li>
              <li>习水县</li>

              <li>桐梓县</li>
              <li>绥阳县</li>
              <li>正安县</li>
              <li>凤冈县</li>
              <li>湄潭县</li>
              <li>凤冈县</li>
              <li>湄潭县</li>
              <li>凤冈县</li>
              <li>湄潭县</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- 广告位列表 -->
      <div class="ads">
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test2.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test3.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test4.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test5.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test6.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test7.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
        <div class="ad-item">
          <div class="productImg">
            <a href="#" target="_blank">
              <img src="${pageContext.request.contextPath }/static/img/test8.jpg" />
            </a>
          </div>
          <div class="productPrice">
            <p class="p"><span>&#165;540</span>元/月</p>
            <p class="d">本季度成交量 <span>7740笔</span></p>
          </div>
          <div class="productTitle">
            <p>
              来自倾城创意影视文化传媒有限公司的介绍
            </p>
          </div>
          <div class="productionDetails">
            <h3>详情</h3>
            <p>处在人流量的地段，在四周有高大的建筑。且视野宽旷，广告位在人群最显眼的地方。</p>
            <a href="javascript:;">更多&gt;&gt;</a>
          </div>
        </div>
      </div>
      <!-- end -->
      <!--分页导航-->
      <div class="page">
        <div class="page-item">
          <ul>
            <li class="active_li"><span>&lt;&lt;</span></li>
            <li><span>&gt;&gt;</span></li>
          </ul>
        </div>
      </div>
    </div>

    <jsp:include page="footer.jsp" />
  </body>
</html>
