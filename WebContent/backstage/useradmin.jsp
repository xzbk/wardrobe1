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
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="<%=basePath%>backstage/css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath%>backstage/css/admin.css">
    <script src="<%=basePath%>backstage/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><!-- <img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" /> -->后台管理中心</h1>
  </div>
  <div class="head-l" style="float: right; margin-right: 50px;" >
	  <a class="button button-little bg-red" href="<%=basePath%>adminLogout"><span class="icon-power-off"></span> 退出登录</a>
  </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="<%=basePath%>goAlterPass" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    <li><a href="<%=basePath%>queryAllUser" target="right"><span class="icon-caret-right"></span>用户信息管理</a></li>
  </ul> 
</div>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="<%=basePath%>goAlterPass" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>