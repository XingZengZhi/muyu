<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="initial-scale=1,user-scalable=yes">
		<title>贵州倾城科技有限公司</title>
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/static/img/qc-icon.ico" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/reset.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/index_style.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/static/js/index.js" type="text/javascript"></script>
	</head>

	<body>
		<!--金典案例蒙板-->
		<div id="case_bar">
			<img src="" />
			<span class="address">地址：贵州省贵阳市乌当区51路</span>
			<span class="btn_">
				<button class="sure_btn">确认</button>
				<button class="case_btn">详情</button>
			</span>
		</div>
		<!--侧边信息栏位-->
		<div id="Message_box">
			<a href="">
				<img src="${pageContext.request.contextPath }/static/img/wx.png" />
			</a>
			<a href="">
				<img src="${pageContext.request.contextPath }/static/img/phone.png" />
			</a>
			<a href="" id="backTop">
				<i class="top_"></i>
				<span class="return_top">
					返回顶部
				</span>
			</a>
		</div>

		<div id="max_box">
			<div id="head_box">
				<jsp:include page="head.jsp" />
				<!--轮播开始-->
				<div id="barner_box">
					<div class="barner_">
						<div class="barner_title">
							<b>
								开启广告之旅！
							</b>
							<a href="" class="show_map">显示地图</a>
							<a href="" class="show_details">详情</a>
						</div>
					</div>
					<p class="left">
						<i class="left_"></i>
					</p>
					<!--轮播图片-->
					<a href="" class="barner_1"><img src="${pageContext.request.contextPath }/static/img/barner_new_1.jpg" /></a>
					<a href="" class="barner_2"><img src="${pageContext.request.contextPath }/static/img/barner_2.jpg" /></a>
					<a href="" class="barner_3"><img src="${pageContext.request.contextPath }/static/img/barner_3.jpg" /></a>
					<!--结束-->
					<p class="right">
						<i class="right_"></i>
					</p>
				</div>
			</div>
			<!--广告分类-->
			<div id="mid_box">
				<h2>广告分类</h2>
				<div class="ad_class">
					<a href="${pageContext.request.contextPath}/pages/toufang">
						<span>宣传广告</span>
						<img src="${pageContext.request.contextPath}/static/img/xuanchuan.jpg" alt="">
					</a>
					<a href="${pageContext.request.contextPath}/pages/toufang">
						<span>多媒体广告</span>
						<img src="${pageContext.request.contextPath}/static/img/duomeitijieshao.jpg" alt="">
					</a>
					<a href="${pageContext.request.contextPath}/pages/toufang">
						<span>视频广告</span>
						<img src="${pageContext.request.contextPath}/static/img/shiping.jpg" alt="">
					</a>
					<a href="${pageContext.request.contextPath}/pages/toufang">
						<span>平面广告</span>
						<img src="${pageContext.request.contextPath}/static/img/pingmian.jpg" alt="">
					</a>
				</div>
			</div>
			<!--经典案例-->
			<div id="case_box">
				<h2>案例</h2>
				<div class="case_item">
					<div class="mask"></div>

					<div class="case_item_box">
						<a href="">
							<img src="${pageContext.request.contextPath }/static/img/35435.jpg" /><!--2 -->
						</a>
					</div>

					<div class="case_item_box">
						<a href="">
							<img src="${pageContext.request.contextPath }/static/img/barner_2.jpg" /><!--3 -->
						</a>
					</div>

					<div class="case_item_box">
						<a href="">
							<img src="${pageContext.request.contextPath }/static/img/barner_3.jpg" /><!--1 -->
						</a>
					</div>

				</div>
			</div>
			<!--------->
			<!--优势介绍-->
			<div id="ad_int">
				<h2>优势介绍</h2>
				<p>最好的“互联网+影像+广告投放+软件管理”互联网广告营销系统服务商</p>
				<span><i></i></span>
				<ul>
					<li>
						<i><img src="${pageContext.request.contextPath }/static/img/ys.png" /></i>
						<h3>影视广告制作</h3>
						<span class="ad_title">
							集合了多元素创作，对影片价值的极致追求，画面内容的精准把控，帮助企业提升品牌与商业价值。
						</span>
					</li>
					<li>
						<i><img src="${pageContext.request.contextPath }/static/img/zn.png" alt="" /></i>
						<h3>智能广告</h3>
						<span class="ad_title">
							用户可通过手机手机软件管理投放，使广告更加方便，快捷，简单，消费透明化，
							广告针对性强，制作费用低，智能管理，用户足不出户就能轻松投放广告，打破传统的广告投放方式。
						</span>
					</li>
					<li>
						<i><img src="${pageContext.request.contextPath }/static/img/gg.png" alt="" /></i>
						<h3>广告投放</h3>
						<span class="ad_title">
							平面广告：（可投放）红桥小区，天蕴南加州小区，新蒲大学城，
							视屏广告：（可投放）澳门路北京华联，珠海路北京华联，仁怀北京华联，迎红桥，南加州，新蒲大学城。
						</span>
					</li>
					<li>
						<i><img src="${pageContext.request.contextPath }/static/img/rj.png" alt="" /></i>
						<h3>广告软件管理</h3>
						<span class="ad_title">
							用户可通过手机APP软件客户端投放以及管理自己的广告，包括每天的投放次数，
							同时还能实时监控，每个区域的广告位和时段的空闲状态进行投放，还可跨区域投放广告。
						</span>
					</li>
				</ul>
			</div>
			<!--关于我们-->
			<div id="us_box">
				<div class="us_about">
					<h3>关于我们</h3>
						<span class="us_article">
						   倾城创意影视文化传媒有限公司创建于2016年，坐落于遵义市新蒲新区平安街，创建以来，公司一直以智能广告为主体，
						  2017年，我们公司将开展新项目，真正为客户解决广告投放难、广告制作费用高、消不透明、针对性不强、转化率低等痛点，告别传统广告投放的思想
						   （线下：用户—影视公司制作广告—科技公司投放—广告屏播放广告）去研发新的广告投放形式（互联网：用户—手机上传资料生成广告—智能化投放管理广告）。大大缩短用户从制作广告到投放广告的时间，
						   凭借着我们公司新研发的智能广告，今年只需一部手机就能轻松投广告，制作成本低、投放价格优、为客户省去了很多人力，物力，财力及不必要的中介麻烦，
						  。为用户提供了一种足不出户也能轻松投广告，管理自己的广告位，跨区域投放，同时它的优势还可以让你更加清晰你的消费情况，广告的播放次数，以及实时监控每个区域每个时间段广告位的空
						  闲状态以便于您及时能投放广告，这种新型的广告投放方式将会受到广大客户的青睐，成为广大客户心目中形成一种宣传品牌的效应。
						  <br/>
						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  展望未来，公司将以更优质的产品和更完善的服务力争成为中国广告行业中的优秀企业者而不断努力拼搏。
					</span>
				</div>
				<div class="us_manager">
					<span>精准</span>
					<span>全面</span>
					<span>收益</span>
					<span>快捷</span>
					<span>高效</span>
				</div>
			</div>
		</div>
		<!-- 公司团队 -->
		<div id="com_team">
			<h2>公司团队</h2>
			<p>凝聚多年案例经验，奠定遵义多家中小公司及政府机构合作关系</p>
			<i></i>
			<div class="coms">
				<div class="com_1">
					<p></p>
					<span>开发团队</span>
					<span>专注智能广告系统的开发，用户平台的建设及app开发</span>
					<a href="">详情</a>
				</div>
				<div class="com_2">
					<p></p>
					<span>广告设计团队</span>
					<span>专注智能广告系统的开发，用户平台的建设及app开发</span>
					<a href="">详情</a>
				</div>
				<div class="com_3">
					<p></p>
					<span>视频设计团队</span>
					<span>专注智能广告系统的开发，用户平台的建设及app开发</span>
					<a href="">详情</a>
				</div>
				<div class="com_4">
					<p></p>
					<span>市场营销团队</span>
					<span>专注智能广告系统的开发，用户平台的建设及app开发</span>
					<a href="">详情</a>
				</div>
				<div class="com_5">
					<p></p>
					<span>策划团队</span>
					<span>专注智能广告系统的开发，用户平台的建设及app开发</span>
					<a href="">详情</a>
				</div>
			</div>

		</div>
		<!-- 新闻资讯 -->
		<div id="news">
			<h2>新闻资讯</h2>
			<p>案例分享与行业分析，源于我们长年对行业趋势的观察与解读。在此，与您分享。</p>
			<i></i>
			<div class="show_img">
				<img src="${pageContext.request.contextPath}/static/img/35435.jpg" />
			</div>
			<div class="show_news">
				<div class="news_top">
					<p>互联网时代下的宣传片拍摄与营销推广</p>
					<p>2016/09/12 [来源: 文化传媒网站]</p>
					<p>
						<a href="">
							互联网时代下的宣传片拍摄与营销推广，越来越多企业选择宣传片 互联网时代下的宣传片拍摄与营销推广，
							越来越多企业选择宣传片 互联网时代下的宣传片拍摄与营销推广，越来越多企业选择宣传片. 
							互联网时代下的宣传片拍摄与营销推广，越来越多企业选择宣传片.
						</a>
					</p>
				</div>
				<div class="news_list">
					<ul>
						<li>
							<span><a href="">国考报名今日截至报名人数已超百万 最后一日或现井喷,国考报名今日截至报名人数已超百万 最后一日或现井喷</a></span>
							<span>2016-12-23</span>
						</li>
						<li>
							<span><a href="">国考报名今日截至报名人数已超百万 最后一日或现井喷</a></span>
							<span>2016-12-23</span>
						</li>
						<li>
							<span><a href="">国考报名今日截至报名人数已超百万 最后一日或现井喷</a></span>
							<span>2016-12-23</span>
						</li>
						<li>
							<span><a href="">国考报名今日截至报名人数已超百万 最后一日或现井喷</a></span>
							<span>2016-12-23</span>
						</li>
						<li>
							<span><a href="">国考报名今日截至报名人数已超百万 最后一日或现井喷</a></span>
							<span>2016-12-23</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--页脚信息-->
		<jsp:include page="footer.jsp" />
	</body>

</html>