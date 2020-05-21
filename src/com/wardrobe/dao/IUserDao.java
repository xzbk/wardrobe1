package com.wardrobe.dao;

import com.wardrobe.entity.User;

public interface IUserDao {
	// 用户注册
	int register(User user);

	// 用户登录
	User login(User user);

	// 修改用户信息
	int alterUser(User user);
	
	User queryById(int id);
}
