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
    <title>添加服装单品</title>  
    <link rel="stylesheet" href="<%=basePath%>backstage/css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath%>backstage/css/admin.css">
    <script src="<%=basePath%>backstage/js/jquery.js"></script>
    <script src="<%=basePath%>backstage/js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加管理员</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>alterAdmin?page=${page }">
    <input type="hidden" name="id" value="${admin.id }" />
      <div class="form-group">
        <div class="label">
          <label>管理员姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="name" value="${admin.name }" data-validate="required:请输入姓名" />         
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>管理员密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="password" value="${admin.password }" data-validate="required:请输入密码" />         
          <div class="tips"></div>
        </div>
      </div>
	  <div class="form-group">
	    <div class="label">
	      <label>确认密码：</label>
	    </div>
	    <div class="field">
	      <input type="text" class="input w50" name="repassword" value="${admin.password }" data-validate="required:请确认密码,repeat#password:两次输入的密码不一致" />         
	      <div class="tips"></div>
	    </div>
	  </div>
      <div class="form-group">
        <div class="label">
          <label>管理员类型：</label>
        </div>
        <div class="field">
          <select class="input w50" name="type.id">
          	<c:forEach items="${types }" var="item" varStatus="status">
          		<c:if test="${item.id == admin.type.id }">
          			<option value="${item.id }" selected="selected">${item.name }</option>
          		</c:if>
          		<c:if test="${item.id != admin.type.id }">
          			<option value="${item.id }">${item.name }</option>
          		</c:if>
          	</c:forEach>
          </select>
        </div>
      </div>
     <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>