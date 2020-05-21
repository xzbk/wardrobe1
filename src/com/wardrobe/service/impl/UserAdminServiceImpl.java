package com.wardrobe.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.IUserAdminDao;
import com.wardrobe.entity.Page;
import com.wardrobe.entity.User;
import com.wardrobe.service.UserAdminService;
import com.wardrobe.utils.GetParamsUtil;

@Service
public class UserAdminServiceImpl implements UserAdminService {
	@Resource
	private IUserAdminDao userDao;

	@Override
	public int addUser(User user) {
		return userDao.addUser(user);
	}

	@Override
	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return userDao.deleteUser(id);
	}

	@Override
	public int alterUser(User user) {
		// TODO Auto-generated method stub
		return userDao.alterUser(user);
	}

	@Override
	public User queryById(int id) {
		// TODO Auto-generated method stub
		return userDao.queryById(id);
	}

	@Override
	public List<User> queryUserByKey(String key) {
		// TODO Auto-generated method stub
		return userDao.queryUserByKey(key);
	}

	@Override
	public void deleteAllUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Map<String, Object> params = GetParamsUtil.showParams(request);
		Set<String> keySet = params.keySet();
		int id;
		for (String key : keySet) {
			id = Integer.parseInt(params.get(key) + "");
			userDao.deleteUser(id);
		}
	}

	@Override
	public Page<User> queryAll(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		int totalRows = userDao.totalRows();
		List<User> users = userDao.queryAll((currentPage - 1) * pageSize, pageSize);
		return new Page<User>(currentPage, users, totalRows, pageSize);
	}

}
