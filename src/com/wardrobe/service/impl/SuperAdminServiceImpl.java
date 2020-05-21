package com.wardrobe.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.ISuperAdminDao;
import com.wardrobe.entity.Admin;
import com.wardrobe.entity.AdminType;
import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;
import com.wardrobe.service.SuperAdminService;
import com.wardrobe.utils.GetParamsUtil;

@Service
public class SuperAdminServiceImpl implements SuperAdminService {

	@Resource
	private ISuperAdminDao superAdminDao;

	@Override
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		int res = superAdminDao.addAdmin(admin);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteAdmin(int id) {
		// TODO Auto-generated method stub
		int res = superAdminDao.deleteAdmin(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterAdmin(Admin admin) {
		// TODO Auto-generated method stub
		int res = superAdminDao.alterAdmin(admin);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Admin> queryAll(int id) {
		// TODO Auto-generated method stub
		return superAdminDao.queryAll(id);
	}

	@Override
	public Admin queryById(int id) {
		// TODO Auto-generated method stub
		return superAdminDao.queryById(id);
	}

	@Override
	public List<AdminType> queryType() {
		// TODO Auto-generated method stub
		return superAdminDao.queryType();
	}

	@Override
	public Page<Admin> queryAll(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		int totalRows = superAdminDao.totalRows();
		List<Admin> users = superAdminDao.queryAll((currentPage - 1) * pageSize, pageSize);
		return new Page<Admin>(currentPage, users, totalRows, pageSize);
	}

	@Override
	public List<Admin> queryByKey(String key) {
		// TODO Auto-generated method stub
		return superAdminDao.queryByKey(key);
	}

	@Override
	public Admin adminLogin(Admin admin) {
		// TODO Auto-generated method stub
		return superAdminDao.adminLogin(admin);
	}

	@Override
	public boolean alterAdminPass(Admin admin) {
		// TODO Auto-generated method stub
		int res = superAdminDao.alterAdminPass(admin);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public void deleteAll(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, Object> params = GetParamsUtil.showParams(request);
		Set<String> keySet = params.keySet();
		int id;
		for (String key : keySet) {
			id = Integer.parseInt(params.get(key) + "");
			superAdminDao.deleteAdmin(id);
		}
	}
}
