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
		<script type="text/javascript">
			$(function(){
				//批量注册单机事件(注册图片点击事件)
				$('img[class="img-width"]').click(function(){
					var imgSrc = $(this).attr('src');
					sessionStorage.setItem('imgSrc',imgSrc);
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
			<header class="header">
				<h2 class="in-center t-top">倡导绿色农业&nbsp;·&nbsp;创造健康生活</h2>
				<h3 class="in-center">Advocate green agriculture,  create a healthy life</h3>
			</header>
			<!--网页主体-->
			<div id="body">
				<div id="mask">
					<!--产品详情-->
					<div class="wid center main">
						<div id="" class="group right">
							<input type="button" onclick="login()" value="所有分享" class="l-btn bg-blue white" />
							<input type="button" onclick="login()" value="只看我的" class="l-btn bg-blue white" />
						</div>
						<div class="clear"></div>
						<!--产品展示-->
						<div class="white">
							<div class="left"  style="margin-right: 10px;" >
								<a href="touristdetail.jsp"><img id="detail_img" src="images/yunnan.jpg" class="img-width" alt=""/></a><br />
							</div>
							<div>
								<p><b>云南昆明</b></p>
								<hr class="" />
								<p class="p-font">被美誉为“春城”的昆明有着四季都开不败的鲜花，仿若一个大型的城市花园。</p>
								<br />
								<p class="p-font">
									冬季开始，群群躲避北方寒风的红嘴鸥，万里迢迢地从遥远的西伯利亚贝加尔湖飞来，落栖在昆明城中的盘龙江、翠湖、滇池等水域，四面八方的人们纷纷前来观看这些小精灵，一派祥和景象。除了美丽的风景外，昆明的风土人情也是云南红土地上绚丽的瑰宝。多个少数民族居民的优势，让昆明的民俗文化更加多元化，使得游客更能感受到淳朴的民族文化。
								</p>
								<p><b>推荐景点</b></p>
								<p class="p-font">
									滇池、大观公园、翠湖、石林、金马碧鸡坊、官渡古镇等。
								</p>
								<p><b>推荐美食</b></p>
								<p class="p-font">
									洋芋、菌类、过桥米线汽锅鸡、饵块等。
								</p>
								<p><b>小贴士</b></p>
								<p class="p-font">
									云南的温泉小有名气，游玩之外，游客可以泡泡温泉，观看一场民族特色演出，当地的夜生活也颇为丰富多彩。
								</p>
								<br>
								<br>
								<br>
							</div>
							<div class="right"  style="margin-right: 10px;" >
									<a href="touristdetail.jsp"><img src="images/haerbin.jpg" class="img-width" alt=""/></a><br />
							</div>
							<div>
								<p><b>黑龙江哈尔滨</b></p>
								<hr class="" />
								<p class="p-font">哈尔滨的人文历史悠久，是中外文化结合的名城，也是常年冬季旅游的胜地。</p>
								<br />
								<p class="p-font">
									庄严雄伟的圣索菲亚教堂、神秘气氛笼罩的尼古拉教堂、造型奇巧的俄罗斯木屋、典雅别致的哥特式楼宇、欧式建筑的中央大街等，雅洁明快的建筑色调，灯红酒绿、繁华如锦的都市风貌，处处折射出“小巴黎”的独特味道。每年冬季的哈尔滨国际冰雪节更是吸引了四面八方的游人，感受晶莹剔透的冰雪王国。虽然天气会很冷，但冰天雪地的哈尔滨才更有味道。如果有勇气，可以逛街的时候来一根马迭尔冰棍，虽然冷上加冷，却是不可错过的名吃之一。
								</p>
								<p><b>推荐景点</b></p>
								<p class="p-font">
									圣索菲亚大教堂、中央大街、太阳岛、冰雪大世界。
								</p>
								<p><b>推荐美食</b></p>
								<p class="p-font">
									锅包肉、杀猪菜、马迭尔冰棍、得莫利炖鱼、小鸡炖蘑菇、猪肉炖粉条、俄罗斯餐。
								</p>
								<p><b>小贴士</b></p>
								<p class="p-font">
									1、注意防寒保暖，手脚要保护好。<br />
									2、东北菜量普遍偏大，点菜时可以酌情少一些。<br />
									3、手机、钱包等不要放在外兜，人多的地方注意小偷。
								</p>
								<br>
								<br>
								<br>
							</div>
							<div class="left"  style="margin-right: 10px;" >
									<a href="touristdetail.jsp"><img src="images/xinxilan.jpg" class="img-width" alt=""/></a><br />
							</div>
							<div>
								<p><b>新西兰奥克兰</b></p>
								<hr class="" />
								<p class="p-font">作为新西兰的最大城市，奥克兰是绝大对数游客必去的落脚地。</p>
								<br />
								<p class="p-font">
									12月的时候正是这里的夏天，温暖的沿海气候让奥克兰的四季都处于一个舒适的温度，夏天平均温度在23℃左右，最高也就是28、29℃，此时海边是当地人最喜欢去的地方，游客不仅可以去海滩享受阳光和冲浪，而且还可以体验一次夏季圣诞节。而到了12月31日午夜24点，市中心的天空塔和海港地区都会放烟火庆祝新年到来，是奥克兰一年中非常重要也非常令人期待的活动。很多人聚集在市中心或是伊甸山、一树山或北岸山上等地方等候观看烟火。如果你是购物狂，那么12月26日的节礼日不要错过，这一天所有的商店都会进行折扣的促销活动，对于游客来说可谓两全其美。
								</p>
								<p><b>推荐景点</b></p>
								<p class="p-font">
									天空塔、一树山、使命湾、伊甸山、海港码头、穆里怀海滩。
								</p>
								<p><b>推荐美食</b></p>
								<p class="p-font">
									海鲜、奶油蛋白酥、奶制品等。
								</p>
								<p><b>小贴士</b></p>
								<p class="p-font">
									1、一年四季紫外线都较强，需要注意防晒。<br />
									2、机场和I-Site游客信息中心可以免费领到中文版的《奥克兰A-Z官方旅游指南》，里面有各种景点活动、行程推荐、住宿餐饮等实用信息，还有不少打折优惠券。<br />
									3、没有给小费的习惯。
								</p>
								<br>
								<br>
								<br>
							</div>
							<div class="right"  style="margin-right: 10px;" >
								<a href="touristdetail.jsp"><img src="images/yuenan.jpg" class="img-width" alt=""/></a><br />
							</div>
							<div>
								<p><b>越南富国岛</b></p>
								<hr class="" />
								<p class="p-font">在越南的最南部，有一处未被开发的世外桃源，这就是富国岛，越南最大的岛屿。</p>
								<br />
								<p class="p-font">
									12月的时候正是这里的夏天，温暖的沿海气候让奥克兰的四季都处于一个舒适的温度，夏天平均温度在23℃左右，最高也就是28、29℃，此时海边是当地人最喜欢去的地方，游客不仅可以去海滩享受阳光和冲浪，而且还可以体验一次夏季圣诞节。而到了12月31日午夜24点，市中心的天空塔和海港地区都会放烟火庆祝新年到来，是奥克兰一年中非常重要也非常令人期待的活动。很多人聚集在市中心或是伊甸山、一树山或北岸山上等地方等候观看烟火。如果你是购物狂，那么12月26日的节礼日不要错过，这一天所有的商店都会进行折扣的促销活动，对于游客来说可谓两全其美。
								</p>
								<p><b>推荐景点</b></p>
								<p class="p-font">
									长滩、白沙滩、葫芦湾海滩、动物园等。
								</p>
								<p><b>推荐美食</b></p>
								<p class="p-font">
									海鲜、米粉、酸奶、法棍、咖啡。
								</p>
								<p><b>小贴士</b></p>
								<p class="p-font">
									1、不建议自己骑摩托车去北部或南部的海滩，路远而且路况差，但如果坚持，一定要在镇上多加些油。<br /> 
									2、12月至2月是旅游旺季，一定要提早订房。<br />
									3、天黑之后，除了东东镇和长滩，富国岛上的其他地方灯光较昏暗，甚至没有路灯，所以在天黑之前要回到房间或是镇上。
								</p>
								<br>
								<br>
								<br>
							</div>
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
