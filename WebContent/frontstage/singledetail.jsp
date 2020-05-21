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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/user.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>frontstage/js/layer.js"></script>
		<script type="text/javascript">
			$(function(){
				//弹出一个iframe层
    			var id = ${clothe.id };
    			  $('#alter').on('click', function(){
    			    layer.open({
    			      type: 2,
    			      title: '修改',
    			      maxmin: true,
    			      shadeClose: true, //点击遮罩关闭层
    			      area : ['100%' , '100%'],
    			      content: 'goAlterSingle?id='+id,
    			      end : function(){
  					  	location.reload();
    			      }
    			    });
    			  });
			})
		</script>
	</head>
	<body>
		<div id="container" >
			<!--顶部导航条-->
			<div id="nav">
				<div class="center wid">
					<nav class="left">
						<a href="${pageContext.request.contextPath }/goIndex">首页</a>
						<a href="${pageContext.request.contextPath }/goWardrobe" >衣柜</a>
						<!-- <a href="singleshare.jsp" >单品分享</a> -->
						<a href="${pageContext.request.contextPath }/goSuitShare">套装分享</a>
						<a href="${pageContext.request.contextPath }/goAddSingle">添加单品</a>
						<a href="${pageContext.request.contextPath }/goAddSuit">添加套装</a>
					</nav>
					<a href="login.jsp" class="right top-a">登录</a>
					<span class="right white top-a">&nbsp;≡&nbsp;</span>
					<a href="regist.jsp" class="right top-a">注册</a>
				</div>
			</div>
			<!--轮播图-->
			<header class="header wid center" style="padding-top: 200px; height: 300px;">
				<div class="white">
					<div class="left"  style="margin-right: 10px;" >
						<img src="<%=basePath%>${clothe.src }" id="detail_img" class="img-width" alt=""/><br />
					</div>
					<div>
						<p><b>${clothe.name }</b></p>
						<a href="${pageContext.request.contextPath }/deleteClothe?id=${clothe.id }&uid=${user.id }">
							<input type="button" value="删除" class="right l-btn bg-blue white" style="width:50px;"/>
						</a>
						<input id="alter" type="button" value="修改" class="right l-btn bg-blue white" style="width:50px;"/>
						<hr class="" />
						<p class="p-font">${clothe.seasonName}</p>
						<br />
						<p class="p-font">${clothe.description }</p>
						<br>
						<br>
						<br>
					</div>
					<div class="clear"></div>
				</div>
			</header>
			<!--网页主体-->
			<div id="body">
				<div id="mask">
					<!--产品详情-->
					<div class="wid center main">
						<%-- <div id="comments" class="white">
							<!--评论-->
							<hr />
							<div class="left"  style="margin-right: 10px;" >
								<img src="<%=basePath%>frontstage/images/hot11.jpg" style="width: 50px; height: 50px;" alt=""/><br />
							</div>
							<p class="p-font">评论区内容安居房老司机暗访了解到萨拉飞机阿斯利康放假撒拉飞机萨拉会计分录靠的就是法兰克</p>
							<div class="click">
								<p class="right p-font like-count">50</p>
								<p class="like right">&#10084;</p>
							</div>
							<div class="clear"></div>
						</div>
						<div id="comments" class="white">
							<!--评论-->
							<hr />
							<div class="left"  style="margin-right: 10px;" >
								<img src="<%=basePath%>frontstage/images/hot1.jpg" style="width: 50px; height: 50px;" alt=""/><br />
							</div>
							<p class="p-font">评论区内容安居房老司机暗访了解到萨拉飞机阿斯利康放假撒拉飞机萨拉会计分录靠的就是法兰克</p>
							<div class="click">
								<p class="right p-font like-count">50</p>
								<p class="like right">&#10084;</p>
							</div>
							<div class="clear"></div>
						</div>
						<div id="" class="flex-display group">
							<textarea class="l-btn flex bg-white" style="height: 70px;"></textarea>
						</div>
						<div id="" class="group">
							<input type="button" onclick="login()" value="发表评论" class="l-btn bg-blue white" />
						</div> --%>
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
