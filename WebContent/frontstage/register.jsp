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
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/user.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
	</head>
	<body>
		<div id="container" >
			<!--网页主体-->
			<div id="body">
				<div id="mask" style="margin: 100px 130px;">
					<div class="center wid main">
						<!--标题-->
						<div class="title">
							<div class="t-left left">
								<span class="t-font white">JOIN&nbsp;US</span>
							</div>
							<div class="t-right" style="margin-top:50px;">
								<hr />
							</div>
							<div class="clear"></div>
						</div>
						<!--登录表单-->
						<form action="<%=basePath%>register" method="post" class="in-center align-left">
							<label for="username" class="white align-left">用户名：</label>
							<div id="" class="flex-display group">
								<input type="input" id="username" name="name" required="required" placeholder="请输入用户名" class="l-btn flex bg-white" />
								<p id="nameCheck" class="hidden red">用户名不能为空</p>
							</div>
							<label for="password" class="white align-left">密码：</label>
							<div id="" class="flex-display group">
								<input type="password" id="password" name="password" required="required" placeholder="请输入密码" class="l-btn flex bg-white" />
								<p id="passwordCheck" class="hidden red">密码不能为空</p>
							</div> 
							<!-- <label for="password_certain" class="white align-left">确认密码：</label>
							<div id="" class="flex-display group">
								<input type="password" id="password_certain" name="password" placeholder="请确认密码" class="l-btn flex bg-white" />
								<p id="passwordCertain" class="red"></p>
							</div>  -->
							<span class="white sm-size align-left"><a id="register" href="<%=basePath%>goLogin">已有账号，立即登录</a></span>
							<div id="" class="group">
								<input type="submit" value="注册" class="l-btn bg-blue white" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
