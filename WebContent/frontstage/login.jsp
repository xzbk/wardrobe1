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
		<title>登录</title>
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
								<span class="t-font white">LOGIN</span>
							</div>
							<div class="t-right" style="margin-top:50px;">
								<hr />
							</div>
							<div class="clear"></div>
						</div>
						<!--登录表单-->
						<form action="${pageContext.request.contextPath }/login" method="post" class="in-center align-left">
							<label for="username" class="white align-left">用户名：</label>
							<div id="" class="flex-display group">
								<input type="input" name="name" id="username" placeholder="请输入用户名" class="l-btn flex bg-white" required="required"/>
							</div>
							<label for="password" class="white align-left">密码：</label>
							<div id="" class="flex-display group">
								<input type="password" name="password" id="password" placeholder="请输入密码" class="l-btn flex bg-white" required="required"/>
							</div> 
							<span class="white sm-size align-left"><a id="register" href="<%=basePath%>goRegister">没有账号？立即注册</a></span>
							<div id="" class="group">
								<input type="submit" value="登录" class="l-btn bg-blue white" />
							</div>
						</form>
						<span class="red">${error }</span>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
