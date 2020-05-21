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
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>frontstage/js/silder.js"></script>
		<script type="text/javascript">
			//文档加载函数
			$(function() {
				//批量注册单机事件(注册图片点击事件)
				$('table[a="a"] img').click(function() {
					var imgSrc = $(this).attr('src');
					sessionStorage.setItem('imgSrc', imgSrc);
				});
				//点赞样式改变
				$(".like").click(function () {
                	$(this).toggleClass('cs');              
            	})
			})
		</script>
	</head>
	<body>
		<div id="container">
			<!--顶部导航条-->
			<div id="nav">
				<div class="center wid">
					<nav class="left">
						<a href="<%=basePath%>goIndex" class="nav-checked">首页</a>
						<a href="<%=basePath%>queryClotheByTypeId?typeId=1&uid=${user.id }" >衣柜</a>
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
			<!--网页主体-->
			<div id="body" class="bg-white" style="padding-top:75px;">
				<div class="center wid main">
					<!--民宿公寓-->
					<div class="title">
						<div class="in-center">
							<span class="t-font">热门套装</span>
						</div>
						<div class="clear"></div>
					</div>
					<table id="pdt">
						<tr>
						<c:forEach items="${suits }" var="item">
							<td><a href="<%=basePath%>querySuitById?id=${item.id }"><img src="<%=basePath%>${item.src }" alt="" class="suit"/></a>
								<p><b>${item.name }</b></p>
								<p>${item.season.name }</p>
								<%-- <p class="right p-font like-count">${item.count }</p>
								<p class="like right">&#10084;</p>
								<p class="p-font">${item.description }</p> --%>
							</td>
						</c:forEach>
						</tr>
						<tr>
					</table>
					<!--当季热门-->
					<div class="title">
						<div class="in-center">
							<span class="t-font">热门单品</span>
						</div>
					</div>
					<table id="pdt" a="a">
						<tr>
							<c:forEach items="${clothes }" var="item">
								<td><a href="<%=basePath%>queryClotheById?id=${item.id }"><img src="<%=basePath%>${item.src }" alt="" class="suit"/></a>
									<p><b>${item.name }</b></p>
									<p>${item.seasonName }</p>
									<%-- <p class="p-font">${item.description }</p> --%>
								</td>
							</c:forEach>
						</tr>
					</table>
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
							Copyright © 2010-2018,www.xxxxxx.com,All rights reserved 版权所有 © StepFoot 未经许可 严禁复制 沪ICP备0101929号
						</span>
					</p>
				</div>
			</footer>
		</div>
	</body>
</html>
