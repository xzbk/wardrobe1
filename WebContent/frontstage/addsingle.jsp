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
		<title>添加单品</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/user.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$('#up_img').change(function () {
			        // 先获取用户上传的文件对象
			        let fileObj = this.files[0];
			        // 生成一个文件读取的内置对象
			        let fileReader = new FileReader();
			        // 将文件对象传递给内置对象
			        fileReader.readAsDataURL(fileObj); //这是一个异步执行的过程，所以需要onload回调函数执行读取数据后的操作
			        // 将读取出文件对象替换到img标签
			        fileReader.onload = function(){  // 等待文件阅读器读取完毕再渲染图片
			           $('#img').attr('src',fileReader.result)
			           //显示图片
 			           $('#img').css('display','block');
		        	}
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
						<a href="<%=basePath%>goIndex">首页</a>
						<a href="<%=basePath%>queryClotheByTypeId?typeId=1&uid=${user.id }" >衣柜</a>
						<!-- <a href="singleshare.jsp" >单品分享</a> -->
						<a href="<%=basePath%>queryAllShareSuit">套装分享</a>
						<a href="<%=basePath%>goAddSingle" class="nav-checked">添加单品</a>
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
			<div id="body" style="padding-top:75px;">
				<div id="mask">
					<div class="center wid main">
						<!--标题-->
						<div class="title">
							<div class="t-left left">
								<span class="t-font white">单品服装添加</span>
							</div>
							<div class="t-right" style="margin-top:50px;">
								<hr />
							</div>
							<div class="clear"></div>
						</div>
						<!--添加单品服装表单-->
						<form action="<%=basePath%>addClothe?uid=1" method="post" enctype="multipart/form-data" class="in-center align-left">
							<label for=name class="white align-left">单品服饰名称：</label>
							<div id="" class="flex-display group">
								<input type="input" name="name" id="clothename" required="required" placeholder="请输入服装单品名称" class="l-btn flex bg-white" />
							</div>
							<img src="" alt="请选择图片" width="200" height="200" style="display: none;" id="img">
							<div id="" class="group">
								<input type="file" name="file" id="up_img" required="required" placeholder="请输入密码" class="flex"/>
							</div> 
							<label for="username" class="white align-left">季节：</label>
							<div id="" class="flex-display group">
								<select name="seasonId" class="l-btn bg-white">
									<c:forEach items="${seasons }" var="item">
										<option value="${item.id }">${item.name }</option>
									</c:forEach>
								</select>
							</div>
							<label for="username" class="white align-left">类型：</label>
							<div id="" class="flex-display group">
								<select name="typeId" class="l-btn bg-white">
									<c:forEach items="${types }" var="item">
										<option value="${item.id }">${item.name }</option>
									</c:forEach>
								</select>
							</div>
							<label for="username" class="white align-left">服饰描述：</label>
							<div id="" class="flex-display group">
								<textarea class="l-btn flex bg-white" name="description" style="height: 70px;"></textarea>
							</div>
							<div id="" class="group">
								<input type="submit" value="提交" class="l-btn bg-blue white" />
							</div>
						</form>
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
</html>