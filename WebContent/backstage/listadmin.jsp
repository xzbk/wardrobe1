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
    <title>网站信息</title>  
    <link rel="stylesheet" href="<%=basePath%>backstage/css/pintuer.css">
    <link rel="stylesheet" href="<%=basePath%>backstage/css/admin.css">
    <script src="<%=basePath%>backstage/js/jquery.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 管理员列表</strong></div>
  <div class="padding border-bottom">
    <ul>
      <li>
    	<form method="post" class="" action="<%=basePath%>queryAdminByKey">
			<div id="">
			  <input type="text" class="input w50" value="" name="key" />
			  <button type="submit" class="button border-green">搜索</button>
			</div>
		</form>
      </li>
    </ul>
  </div>
  <form action="<%=basePath%>deleteAll" method="post">
  <table class="table table-hover text-center">
   <tr>
     <th width="5%">ID</th>     
     <th>管理员名称</th>  
     <th>管理员类型</th>     
     <th width="250">操作</th>
   </tr>
   <c:forEach items="${data.items }" var="item" varStatus="status">
   	<tr>
      <td>
      	<input type="checkbox" class="checkboxId" name="id${status.index }" value="${item.id }" />
      	${status.index+1 }
      </td>      
      <td>${item.name }</td>  
      <td>${item.type.name }</td>      
      <td>
      <div class="button-group">
      	<a type="button" class="button border-main" href="<%=basePath%>queryAdminById?id=${item.id }&page=${data.currentPage}"><span class="icon-edit"></span>修改</a>
      	<a class="button border-red" href="javascript:void(0)" onclick="return del(${item.id})"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr>
   </c:forEach>
   <c:forEach items="${admins }" var="item" varStatus="status">
   	<tr>
      <td>
      	<input type="checkbox" class="checkboxId" name="id${status.index }" value="${item.id }" />
      	${status.index+1 }
      </td>      
      <td>${item.name }</td>  
      <td>${item.type.name }</td>      
      <td>
      <div class="button-group">
      	<a type="button" class="button border-main" href="<%=basePath%>queryAdminById?id=${item.id }&page=${data.currentPage }"><span class="icon-edit"></span>修改</a>
      	<a class="button border-red" href="javascript:void(0)" onclick="return del(${item.id})"><span class="icon-trash-o"></span> 删除</a>
      </div>
      </td>
    </tr>
   </c:forEach>
   <tr>
     <td colspan="8">
      	<button style="float: left;" type="button"  class="button border-green" id="checkall"><span class="icon-check"></span>全选</button>
      	<button style="float: left;" type="submit" class="button border-red"><span class="icon-trash-o"></span>批量删除</button>
     	<div class="pagelist">
        		<c:choose>
        			<c:when test="${data.currentPage>1 }">
						<a href="<%=basePath%>queryAllAdmin?page=${data.currentPage-1 }">上一页</a>
					</c:when>
					<c:otherwise>
						<span style="color: #E0E0E0;">上一页</span>
					</c:otherwise>
        		</c:choose>
				<c:forEach var="page" begin="1" end="${totalPage }">
					<c:if test="${page == data.currentPage }">
						<span class="current">${page }</span>
					</c:if>
					<c:if test="${page != data.currentPage }">
						<a href="<%=basePath%>queryAllAdmin?page=${page }">${page }</a>
					</c:if>
				</c:forEach>
				<c:choose>
					<c:when test="${data.currentPage<totalPage }">
						<a href="<%=basePath%>queryAllAdmin?page=${data.currentPage+1 }">下一页</a>
					</c:when>
					<c:otherwise>
						<span style="color: #E0E0E0;">下一页</span>
					</c:otherwise>
        		</c:choose>
			</div>
     </td>
   </tr>
  </table>
   </form>
</div>
<script type="text/javascript">
	function del(id){
		if(confirm("您确定要删除吗?")){
			window.location.href="<%=basePath%>deleteAdmin?id="+id;
		}
	};
	//全选
	$("#checkall").click(function(){ 
		var count = 0;
	  $(".checkboxId").each(function(){
		  if (this.checked) {//取消选中
			  this.checked = false;
		  }
		  else {//选中
			  this.checked = true;
		  }
	  });
	});
</script>
</body></html>