package com.wardrobe.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;

public interface IUserAdminDao {
	// 填加用户
	int addUser(User user);

	// 删除用户
	int deleteUser(int id);

	// 修改用户信息
	int alterUser(User user);

	// 分页查询所有用户
	List<User> queryAll(@Param("start") int start, @Param("pageSize") int pageSize);

	// 查询单条用户信息
	User queryById(int id);

	// 通过条件查询用户
	List<User> queryUserByKey(String key);

	// 查询所有记录条数
	int totalRows();
}
