package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wardrobe.entity.Admin;
import com.wardrobe.entity.AdminType;
import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;
import com.wardrobe.service.impl.SuperAdminServiceImpl;

@Controller
public class SuperAdminController {

	@Resource
	private SuperAdminServiceImpl superAdminService;

	@RequestMapping("/addAdmin")
	public String addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		superAdminService.addAdmin(admin);
		return "forward:/queryAllAdmin";
	}

	@RequestMapping("/deleteAdmin")
	public String deleteAdmin(int id) {
		// TODO Auto-generated method stub
		superAdminService.deleteAdmin(id);
		return "redirect:/queryAllAdmin";
	}

	@RequestMapping("/deleteAll")
	public String deleteAll(HttpServletRequest request) {
		// TODO Auto-generated method stub
		superAdminService.deleteAll(request);
		return "redirect:/queryAllAdmin";
	}

	@RequestMapping("/alterAdmin")
	public String alterAdmin(Admin admin) {
		// TODO Auto-generated method stub
		boolean res = superAdminService.alterAdmin(admin);
		return "forward:/queryAllAdmin";

	}

	@RequestMapping("/queryAllAdmin")
	public String queryAll(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		int currentPage = (page != null) ? Integer.parseInt(page) : 1;
		int pageSize = 5;
		Page<Admin> data = superAdminService.queryAll(currentPage, pageSize);
		int totalPage = data.getTotalPage();
		request.setAttribute("data", data);
		request.setAttribute("totalPage", totalPage);
		return "backstage/listadmin";
	}

	@RequestMapping("/queryAdminByKey")
	public String queryAdminByKey(String key, HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<Admin> admins = superAdminService.queryByKey(key);
		request.setAttribute("admins", admins);
		return "backstage/listadmin";
	}

	@RequestMapping("/queryAllAdminById")
	public String queryAllById(int typeId) {
		// TODO Auto-generated method stub
		superAdminService.queryAll(typeId);
		return "";
	}

	@RequestMapping("/queryAdminById")
	public String queryById(int id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Admin admin = superAdminService.queryById(id);
		List<AdminType> types = superAdminService.queryType();
		request.setAttribute("admin", admin);
		request.setAttribute("types", types);
		request.setAttribute("page", request.getParameter("page"));
		return "backstage/alteradmin";
	}

	@RequestMapping("/queryType")
	@ResponseBody
	public List<AdminType> queryType() {
		// TODO Auto-generated method stub
		return superAdminService.queryType();
	}

	@RequestMapping("/adminLogin")
	public String adminLogin(Admin admin, HttpServletRequest request) {
		admin = superAdminService.adminLogin(admin);
		if(admin==null) {
			request.setAttribute("error", "登录失败请重试");
			return "backstage/login";
		}
		request.getSession().setAttribute("admin", admin);
		if (admin.getType().getId() == 1) {
			return "redirect:/goSuperAdmin";
		} else {
			return "redirect:/goUserAdmin";
		}
	}

	@RequestMapping("/alterAdminPass")
	public String alterAdminPass(Admin admin, HttpServletRequest request) {
		// TODO Auto-generated method stub
		boolean res = superAdminService.alterAdminPass(admin);
		if(res) {
			admin = superAdminService.queryById(admin.getId());
			request.getSession().setAttribute("admin", admin);
			request.setAttribute("msg", "修改成功");
		}else {
			request.setAttribute("msg", "修改失败");
		}
		return "backstage/adminpass";
	}
}
