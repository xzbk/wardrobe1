package com.wardrobe.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.wardrobe.entity.Admin;
import com.wardrobe.entity.AdminType;
import com.wardrobe.entity.Page;

public interface SuperAdminService {
	// 填加管理员
	boolean addAdmin(Admin admin);

	// 删除管理员
	boolean deleteAdmin(int id);

	// 修改管理员信息
	boolean alterAdmin(Admin admin);

	// 查询所有管理员
	List<Admin> queryAll(int id);

	// 查询单条管理员信息
	Admin queryById(int id);

	// 查询管理员类型(下拉菜单)
	List<AdminType> queryType();

	// 查询所有管理员
	Page<Admin> queryAll(int currentPage, int pageSize);

	// 搜索查询管理员
	List<Admin> queryByKey(String key);

	// 管理员登录
	Admin adminLogin(Admin admin);

	// 修改管理员密码
	boolean alterAdminPass(Admin admin);

	// 删除所有被选中的管理员
	void deleteAll(HttpServletRequest request);
}
