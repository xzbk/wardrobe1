package com.wardrobe.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wardrobe.entity.Admin;
import com.wardrobe.entity.AdminType;

public interface ISuperAdminDao {
	// 填加管理员
	int addAdmin(Admin admin);

	// 删除管理员
	int deleteAdmin(int id);

	// 修改管理员信息
	int alterAdmin(Admin admin);

	// 查询所有管理员
	List<Admin> queryAll(int id);

	// 查询单条管理员信息
	Admin queryById(int id);

	// 查询管理员类型(下拉菜单)
	List<AdminType> queryType();

	// 查询所有管理员
	List<Admin> queryAll(@Param("start") int start, @Param("pageSize") int pageSize);

	// 搜索查询管理员
	List<Admin> queryByKey(String key);

	// 管理员登录
	Admin adminLogin(Admin admin);

	// 修改管理员密码
	int alterAdminPass(Admin admin);

	// 查询所有条数
	int totalRows();
}
