package com.wardrobe.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/**
 * 管理员登陆拦截器
 * @author Administrator
 *
 */
public class AdminLoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		//执行完毕，返回前拦截
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		//处理过程中执行拦截
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
		// TODO Auto-generated method stub
		if(request.getSession().getAttribute("admin")==null) {
			System.out.println("weidenglu");
			//登录失败，跳转到登录页面
			response.sendRedirect("backstage/login.jsp");
			return false;
		}
		return true;
	}

}
