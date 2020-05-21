package com.wardrobe.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.IUserDao;
import com.wardrobe.entity.User;
import com.wardrobe.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private IUserDao userDao;

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		int res = userDao.register(user);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDao.login(user);
	}

	@Override
	public boolean alterUser(User user) {
		// TODO Auto-generated method stub
		int res = userDao.alterUser(user);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public User queryById(int id) {
		// TODO Auto-generated method stub
		return userDao.queryById(id);
	}
}
