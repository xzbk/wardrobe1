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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>frontstage/css/main.css" />
		<script type="text/javascript" src="<%=basePath%>frontstage/js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>frontstage/js/layer.js"></script>
		<script type="text/javascript">
			$(function(){
				var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
				$('img').click(function(){
					var typeId = ${clotheType};
					var srcAttr = $(this).attr('src');
					var src = srcAttr.substring(srcAttr.indexOf('upload'));
					var clotheId = $(this).attr('alt');
					if(typeId == 1){
						parent.$('input[name="coat.id"]').val(clotheId);
						parent.$('#coatImg').attr('src',src);
					}else if(typeId == 2){
						parent.$('input[name="pants.id"]').val(clotheId);
						parent.$('#pantsImg').attr('src',src);
					}else{
						parent.$('input[name="shoes.id"]').val(clotheId);
						parent.$('#shoesImg').attr('src',src);
					}
				    parent.layer.close(index);//关闭当前弹窗页面
				});
			})
		</script>
	</head>
	<body>
		<div id="container" >
			<!--网页主体-->
			<div id="body">
				<div id="mask">
					<!--产品介绍-->
					<div class="wid center main">
						<table id="pdt" class="white">
							<c:forEach items="${clothes }" var="item">
								<tr>
									<td>
										<img src="<%=basePath%>${item.src}" alt="${item.id }"  height="230px" width="500px"/>
										<p><b>${item.name }</b></p>
										<p class="p-font">
											<span class="red">类型:</span>
											<span class="orage">${item.type }</span>
										</p>
										<p class="p-font">
											<span class="red">季节:</span>
											<span class="orage">${item.seasonName }</span>
										</p>
										<p class="p-font">
											<span class="red">描述:</span>
											<span class="orage">${item.description }</span>
										</p>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>	
				</div>
			</div>
		</div>
	</body>
</html>
