package com.wardrobe.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;

public interface UserAdminService {
	// 填加用户
	int addUser(User user);

	// 删除用户
	int deleteUser(int id);

	// 修改用户信息
	int alterUser(User user);

	// 分页查询所有用户
	Page<User> queryAll(int currentPage, int pageSize);

	// 查询单条用户信息
	User queryById(int id);

	// 通过条件查询用户
	List<User> queryUserByKey(String key);

	// 删除所有复选框选中的用户
	void deleteAllUser(HttpServletRequest request);
}
