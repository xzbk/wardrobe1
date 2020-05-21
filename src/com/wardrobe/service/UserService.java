package com.wardrobe.service;

import com.wardrobe.entity.User;

public interface UserService {
	// 用户注册
	boolean register(User user);

	// 用户登录
	User login(User user);

	// 修改用户信息
	boolean alterUser(User user);
	
	//通过id获取用户信息
	User queryById(int id);
}
