管理员:

	入口: http://localhost:8080/wardrobe1/goAdminLogin
	唯一超级管理员:
		账号: superadmin
		密码: 000000
	测试用户管理员:
		账号: useradmin
		密码: 000000
用户:

	入口: http://localhost:8080/wardrobe1/goIndex
	测试用户:
		账号: user1
		密码: 000000
项目:

	数据库:
		数据库名: wardrobe
		数据库文件: 
			配置文件: config ---> jdbc.properties
			sql文件: WebContent ---> wardrobe.sql
角色关系及功能: 

	超级管理员: 可分配用户管理员账号、删除用户管理员等
	用户管理员: 可查看用户信息、冻结用户账号、删除用户等
	用户:
		未登录状态: 可查看首页、分享套装页面等
		登录状态: 可查看所有界面
项目结构:

	src:
		--->com.wardrobe.controller
		--->com.wardrobe.dao
		--->com.wardrobe.entity
		--->com.wardrobe.interceptor		拦截器(用于控制用户登陆与否可访问页面的权限)
		--->com.wardrobe.service
		--->com.wardrobe.service.impl
		--->com.wardrobe.utils
		
	config:
		--->jdbc.properties		数据库配置文件
		--->log4J.properties	日志配置文件(用于控制日志输出及其输出格式)
		--->spring-mvc.xml		springMVC配置文件
		---->spring-mybatis.xml	spring与mybatis整合配置文件
		
	WebContent:
		--->frontstage		前台页面文件
					--->index.jsp
					--->wardrobe.jsp
					--->suitshare.jsp
					--->addsingle.jsp
					--->addsuit.jsp
					--->login.jsp
					--->register.jsp
		--->backstage		后台(包括管理员界面)页面文件
					--->superAdmin.jsp
					--->useradmin.jsp
					--->login.jsp
					--->register.jsp
		
	