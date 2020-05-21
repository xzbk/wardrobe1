package com.wardrobe.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wardrobe.entity.Msg;
import com.wardrobe.entity.User;
import com.wardrobe.service.impl.UserServiceImpl;

@Controller
public class UserController {

	@Resource
	private UserServiceImpl userService;

	@RequestMapping("/register")
	public String register(User user) {
		// TODO Auto-generated method stub
		boolean res = userService.register(user);
		return "redirect:/goLogin";
	}

	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		user = userService.login(user);
		if (user != null) {
			request.getSession().setAttribute("user", user);
			return "redirect:/goIndex";
		}else {
			request.getSession().setAttribute("error", "登录失败请重试");
			return "frontstage/login";
		}
	}

	@RequestMapping("/alterUser")
	public String alterUser(User user, HttpServletRequest request) {
		// TODO Auto-generated method stub
		boolean res = userService.alterUser(user);
		if(res) {
			user = userService.queryById(user.getId());
			request.getSession().setAttribute("user", user);
			request.setAttribute("msg", "修改成功");
		}else {
			request.setAttribute("msg", "修改失败");
		}
		return "backstage/pass";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.getSession().removeAttribute("user");
		return "redirect:/goLogin";
	}
}
