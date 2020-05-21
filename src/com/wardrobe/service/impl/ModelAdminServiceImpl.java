package com.wardrobe.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.IModelAdminDao;
import com.wardrobe.entity.Season;
import com.wardrobe.service.ModelAdminService;

@Service
public class ModelAdminServiceImpl implements ModelAdminService {

	@Resource
	private IModelAdminDao modelAdminDao;

	@Override
	public boolean addSeason(Season season) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.addSeason(season);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteSeason(int id) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.deleteSeason(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterSeason(Season season) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.alterSeason(season);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Season> queryAllSeason() {
		// TODO Auto-generated method stub
		return modelAdminDao.queryAllSeason();
	}

	@Override
	public boolean addClotheType(String type) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.addClotheType(type);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteClotheType(int id) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.deleteClotheType(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterClotheType(int id, String type) {
		// TODO Auto-generated method stub
		int res = modelAdminDao.alterClotheType(id, type);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Map> queryAllType() {
		// TODO Auto-generated method stub
		return modelAdminDao.queryAllType();
	}
}
