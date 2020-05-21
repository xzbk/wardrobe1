package com.wardrobe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.ISingleClotheDao;
import com.wardrobe.entity.Clothe;
import com.wardrobe.entity.Page;
import com.wardrobe.service.SingleColtheService;

@Service
public class SingleColtheServiceImpl implements SingleColtheService {

	@Resource
	private ISingleClotheDao singleColtheDao;

	@Override
	public boolean addClothe(Clothe clothe) {
		// TODO Auto-generated method stub
		int res = singleColtheDao.addClothe(clothe);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteClothe(int id) {
		// TODO Auto-generated method stub
		int res = singleColtheDao.deleteClothe(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterClothe(Clothe clothe) {
		// TODO Auto-generated method stub
		int res = singleColtheDao.alterClothe(clothe);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Clothe> queryAll(int typeId,int uid) {
		// TODO Auto-generated method stub
		return singleColtheDao.queryAll(typeId,uid);
	}

	@Override
	public Clothe queryById(int id) {
		// TODO Auto-generated method stub
		return singleColtheDao.queryById(id);
	}

	@Override
	public Page<Clothe> queryAllByTypeId(int typeId,int uid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		 List<Clothe> clothes = singleColtheDao.queryAllByTypeId(typeId,uid,(currentPage-1)*pageSize, pageSize);
		 int totalRows = singleColtheDao.totalRows(typeId);
		 return new Page<>(currentPage, clothes, totalRows, pageSize);
	}

	@Override
	public List<Clothe> queryAllHot() {
		// TODO Auto-generated method stub
		return singleColtheDao.queryAllHot();
	}

}
