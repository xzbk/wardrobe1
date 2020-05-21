package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wardrobe.entity.Admin;
import com.wardrobe.entity.AdminType;
import com.wardrobe.service.impl.SuperAdminServiceImpl;

@Controller
public class BackPageController {

	@Resource
	private SuperAdminServiceImpl superAdminService;

	/**
	 * 跳转到后台首页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goBackIndex")
	public String goBackIndex(HttpServletRequest request) {
		return "backstage/index";
	}

	/**
	 * 跳转到添加管理员界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAddAdmin")
	public String goAddAdmin(HttpServletRequest request) {
		List<AdminType> types = superAdminService.queryType();
		request.setAttribute("types", types);
		return "backstage/addadmin";
	}

	/**
	 * 跳转到管理员登录界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAdminLogin")
	public String goAdminLogin() {
		return "backstage/login";
	}

	/**
	 * 跳转到管理员退出后的登录界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/adminLogout")
	public String adminLogout(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "backstage/login";
	}

	/**
	 * 跳转到管理员修改密码页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAlterPass")
	public String goAlterPass() {
		return "backstage/adminpass";
	}

	/**
	 * 跳转到超级管理员首页
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goSuperAdmin")
	public String goSuperAdmin() {
		return "backstage/superAdmin";
	}

	/**
	 * 跳转到用户管理员首页
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goUserAdmin")
	public String goUserAdmin() {
		return "backstage/useradmin";
	}
}
