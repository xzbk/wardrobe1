<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>产品详情页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
	</head>
	<body>
		<div id="container" >
			<!--顶部导航条-->
			<div id="nav">
				<div class="center wid">
					<nav class="left">
						<a href="<%=basePath%>goIndex">首页</a>
						<a href="<%=basePath%>queryClotheByTypeId?typeId=1&uid=${user.id }" >衣柜</a>
						<!-- <a href="singleshare.jsp" >单品分享</a> -->
						<a href="<%=basePath%>queryAllShareSuit" class="nav-checked">套装分享</a>
						<a href="<%=basePath%>goAddSingle">添加单品</a>
						<a href="<%=basePath%>goAddSuit">添加套装</a>
					</nav>
					<c:choose>
						<c:when test="${not empty user }">
							<div id="user" class="right top-a white">hello, ${user.name }&nbsp;&nbsp;&#9660;
								<div id="combobox">
									<a href="<%=basePath%>goBackIndex">个人中心</a>
									<a href="<%=basePath%>logout">退出</a>
								</div>
							</div>
							
						</c:when>
						<c:otherwise>
							<a href="<%=basePath%>goLogin" class="right top-a">登录</a>
							<span class="right white top-a">&nbsp;≡&nbsp;</span>
							<a href="<%=basePath%>goRegister" class="right top-a">注册</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<!--轮播图-->
			<header class="header">
			</header>
			<!--网页主体-->
			<div id="body">
				<div id="mask">
					<!--产品详情-->
					<div class="wid center main">
						<!-- 导航 -->
						<c:if test="${not empty user }">
							<div style="width:140px; position: absolute; left:15px;" class="left">
								<a href="<%=basePath%>queryAllShareSuit?uid=${user.id }"><div class="nav-checked white in-center left-li">只看自己</div></a>
								<a href="<%=basePath%>queryAllShareSuit"><div class="nav-checked white in-center left-li">查看所有</div></a>
							</div>
						</c:if>
						<!--产品展示-->
						<div class="white">
							<c:forEach items="${suits }" var="item" varStatus="status">
								<c:if test="${status.index%2==1 }">
									<div class="right"  style="margin-right: 10px;" >
										<a href="<%=basePath%>querySuitById?id=${item.id }"><img id="detail_img" src="<%=basePath%>${item.src}" class="img-width" alt=""/></a><br />
									</div>
								</c:if>
								<c:if test="${status.index%2==0 }">
									<div class="left"  style="margin-right: 10px;" >
										<a href="<%=basePath%>querySuitById?id=${item.id }"><img id="detail_img" src="<%=basePath%>${item.src}" class="img-width" alt=""/></a><br />
									</div>
								</c:if>
								<div>
									<p><b>${item.name }</b></p>
									<hr class="" />
									<p class="p-font">${item.season.name }</p>
									<br />
									<p class="p-font">${item.description }</p>
								</div>
								<br>
								<br>
								<br>
								<div class="clear"></div>
							</c:forEach>
							<%-- <div class="right"  style="margin-right: 10px;" >
								<a href="touristdetail.jsp"><img src="<%=basePath%>frontstage/images/yuenan.jpg" class="img-width" alt=""/></a><br />
							</div>
							<div>
								<p><b>越南富国岛</b></p>
								<hr class="" />
								<p class="p-font">在越南的最南部，有一处未被开发的世外桃源，这就是富国岛，越南最大的岛屿。</p>
								<br />
								<p class="p-font">
									12月的时候正是这里的夏天，温暖的沿海气候让奥克兰的四季都处于一个舒适的温度，夏天平均温度在23℃左右，最高也就是28、29℃，此时海边是当地人最喜欢去的地方，游客不仅可以去海滩享受阳光和冲浪，而且还可以体验一次夏季圣诞节。而到了12月31日午夜24点，市中心的天空塔和海港地区都会放烟火庆祝新年到来，是奥克兰一年中非常重要也非常令人期待的活动。很多人聚集在市中心或是伊甸山、一树山或北岸山上等地方等候观看烟火。如果你是购物狂，那么12月26日的节礼日不要错过，这一天所有的商店都会进行折扣的促销活动，对于游客来说可谓两全其美。
								</p>
								<p><b>推荐景点</b></p>
								<p class="p-font">
									长滩、白沙滩、葫芦湾海滩、动物园等。
								</p>
								<p><b>推荐美食</b></p>
								<p class="p-font">
									海鲜、米粉、酸奶、法棍、咖啡。
								</p>
								<p><b>小贴士</b></p>
								<p class="p-font">
									1、不建议自己骑摩托车去北部或南部的海滩，路远而且路况差，但如果坚持，一定要在镇上多加些油。<br /> 
									2、12月至2月是旅游旺季，一定要提早订房。<br />
									3、天黑之后，除了东东镇和长滩，富国岛上的其他地方灯光较昏暗，甚至没有路灯，所以在天黑之前要回到房间或是镇上。
								</p>
								<br>
								<br>
								<br> --%>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--网页底部-->
			<footer>
				<div class="wid center in-center">
					<p style="padding-top:15px;">
						<span>
							<a href="">网站首页</a>
							<a href="">详情介绍</a>
							<a href="">在线留言 </a>
							<a href="">联系我们 </a>
						</span>
					</p>
					<p>
						<span class="sm-size">
							Copyright © 2010-2018,www.xxxxxx.com,All rights reserved  版权所有 © StepFoot 未经许可 严禁复制  沪ICP备0101929号 
						</span>
					</p>
				</div>
			</footer>
		</div>
	</body>
</html>
