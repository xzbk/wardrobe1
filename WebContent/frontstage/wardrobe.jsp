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
		<title>衣柜</title>
		<%-- <link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/bootstrap.min.css" /> --%>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
	</head>
	<body>
		<div id="container">
			<!--顶部导航条-->
			<div id="nav">
				<div class="center wid">
					<nav class="left">
						<a href="<%=basePath%>goIndex">首页</a>
						<a href="<%=basePath%>queryClotheByTypeId?typeId=1&uid=${user.id }" class="nav-checked">衣柜</a>
						<!-- <a href="singleshare.jsp" >单品分享</a> -->
						<a href="<%=basePath%>queryAllShareSuit">套装分享</a>
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
					<!--产品介绍-->
					<div class="wid center main">
						<div class="title">
							<div class="t-left left">
								<span class="t-font white">${clotheType }</span>
							</div>
							<div class="t-right" style="margin-top:50px;">
								<hr />
							</div>
							<div class="clear"></div>
						</div>
						<div style="width:150px; position: absolute; left:15px;" class="left">
							<a href="<%=basePath%>queryClotheByTypeId?typeId=1&uid=${user.id}"><div class="nav-checked white in-center left-li">上衣</div></a>
							<a href="<%=basePath%>queryClotheByTypeId?typeId=2&uid=${user.id}"><div class="nav-checked white in-center left-li">下衣</div></a>
							<a href="<%=basePath%>queryClotheByTypeId?typeId=3&uid=${user.id}"><div class="nav-checked white in-center left-li">鞋子</div></a>
							<a href="<%=basePath%>queryAllSuit?uid=${user.id}"><div class="nav-checked white in-center left-li">套装</div></a>
						</div>
						<ul  class="white ul-nostyle">
							<c:choose>
								<c:when test="${clotheType != '套装' }">
									<c:forEach items="${data.items }" var="item" varStatus="status">
											<li style="width:290px; padding:5px 5px;" class="left">
												<a href="<%=basePath%>queryClotheById?id=${item.id }">
													<img src="<%=basePath%>${item.src}" alt=""  height="250px" width="250px"/>
												</a>
												<p><b>${item.name }</b></p>
												<p>${item.seasonName }</p>
												<%-- <p class="p-font">${item.description }</p> --%>
											</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach items="${data.items }" var="item" varStatus="status">
											<li style="width:290px; padding-left: 10px;" class="left">
												<a href="<%=basePath%>querySuitById?id=${item.id }">
													<img src="<%=basePath%>${item.src}" alt=""  height="250px" width="250px"/>
												</a>
												<p><b>${item.name }</b></p>
												<p>${item.season.name }</p>
												<p class="right p-font like-count" style="margin-right: 20px;">${item.count }</p>
												<c:if test="${item.share==1 }">
													<a href="<%=basePath%>deShareSuit?id=${item.id }&page=${data.currentPage }&uid=${user.id}">
														<p class="like right" style="margin-right: 2px;color:red;" title="点击取消分享">&#10150;</p>
													</a>
												</c:if>
												<c:if test="${item.share==0 }">
													<a href="<%=basePath%>shareSuit?id=${item.id }&page=${data.currentPage }&uid=${user.id}">
														<p class="like right" style="margin-right: 2px;color:white;" title="点击分享套装">&#10150;</p>
													</a>
												</c:if>
												<p class="p-font">${item.description }</p>
											</li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
						<div class="clear" ></div>
						<div class="page">
							<c:choose>
								<c:when test="${clotheType != '套装' }">
									<c:if test="${data.currentPage>1 }">
										<a href="<%=basePath%>queryClotheByTypeId?page=${data.currentPage-1 }&typeId=${typeId}&uid=${user.id}">上一页</a>
									</c:if>
									<c:if test="${totalPage >1 }">
										<c:forEach var="page" begin="1" end="${totalPage }">
											<c:if test="${page == data.currentPage }">
												<a>${page }</a>
											</c:if>
											<c:if test="${page != data.currentPage }">
												<a href="<%=basePath%>queryClotheByTypeId?page=${page }&typeId=${typeId}&uid=${user.id}">${page }</a>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${data.currentPage<totalPage }">
										<a href="<%=basePath%>queryClotheByTypeId?page=${data.currentPage+1 }&typeId=${typeId}&uid=${user.id}">下一页</a>
									</c:if>
								</c:when>
								<c:otherwise>
									<c:if test="${data.currentPage>1 }">
										<a href="<%=basePath%>queryAllSuit?page=${data.currentPage-1 }&uid=${user.id}">上一页</a>
									</c:if>
									<c:if test="${totalPage >1 }">
										<c:forEach var="page" begin="1" end="${totalPage }">
											<c:if test="${page == data.currentPage }">
												<a>${page }</a>
											</c:if>
											<c:if test="${page != data.currentPage }">
												<a href="<%=basePath%>queryAllSuit?page=${page }&uid=${user.id}">${page }</a>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${data.currentPage<totalPage }">
										<a href="<%=basePath%>queryAllSuit?page=${data.currentPage+1 }&uid=${user.id}">下一页</a>
									</c:if>
								</c:otherwise>
							</c:choose>
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
