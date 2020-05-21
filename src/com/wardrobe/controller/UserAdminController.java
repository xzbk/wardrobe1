package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;
import com.wardrobe.service.impl.UserAdminServiceImpl;

@Controller
public class UserAdminController {
	@Resource
	private UserAdminServiceImpl userService;

	@RequestMapping("/addUser")
	public String addUser(User user) {
		return "redirect:/queryAll";
	}

	@RequestMapping("/deleteUser")
	public String deleteUser(int id) {
		// TODO Auto-generated method stub
		userService.deleteUser(id);
		return "redirect:/queryAllUser";
	}

	@RequestMapping("/deleteAllUser")
	public String deleteAllUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		userService.deleteAllUser(request);
		return "redirect:/queryAllUser";
	}

	@RequestMapping("/alterUserStatus")
	public String alterUser(User user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		userService.alterUser(user);
		return "forward:/queryAllUser";
	}

	@RequestMapping("/queryAllUser")
	public String queryAll(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		int currentPage = (page != null) ? Integer.parseInt(page) : 1;
		int pageSize = 5;
		Page<User> data = userService.queryAll(currentPage, pageSize);
		int totalPage = data.getTotalPage();
		request.setAttribute("data", data);
		request.setAttribute("totalPage", totalPage);
		return "backstage/useroper";
	}

	@RequestMapping("/queryUserById")
	@ResponseBody
	public String queryById(int id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		User user = userService.queryById(id);
		request.setAttribute("user", user);
		return "";
	}

	@RequestMapping("/queryUserByKey")
	public String queryUserByKey(String key, HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<User> users = userService.queryUserByKey(key);
		request.setAttribute("users", users);
		return "backstage/useroper";
	}

}
