package com.wardrobe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.ISuitDao;
import com.wardrobe.entity.Page;
import com.wardrobe.entity.Suit;
import com.wardrobe.service.SuitService;

@Service
public class SuitServiceImpl implements SuitService {
	@Resource
	private ISuitDao suitDao;

	@Override
	public boolean addSuit(Suit suit) {
		// TODO Auto-generated method stub
		int res = suitDao.addSuit(suit);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteSuit(int id) {
		// TODO Auto-generated method stub
		int res = suitDao.deleteSuit(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterSuit(Suit suit) {
		// TODO Auto-generated method stub
		int res = suitDao.alterSuit(suit);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Page<Suit> queryAll(int uid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		 List<Suit> suits = suitDao.queryAll(uid, (currentPage-1)*pageSize, pageSize);
		 int totalRows = suitDao.totalRows();
		 return new Page<Suit>(currentPage, suits, totalRows, pageSize);
	}

	@Override
	public Suit queryById(int id) {
		// TODO Auto-generated method stub
		return suitDao.queryById(id);
	}

	@Override
	public List<Suit> queryAllHot() {
		// TODO Auto-generated method stub
		return suitDao.queryAllHot();
	}

	@Override
	public boolean shareSuit(Suit suit) {
		// TODO Auto-generated method stub
		int res = suitDao.shareSuit(suit);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deShareSuit(Suit suit) {
		// TODO Auto-generated method stub
		int res = suitDao.deShareSuit(suit);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Suit> queryAllShare(Suit suid) {
		// TODO Auto-generated method stub
		return suitDao.queryAllShare(suid);
	}

}
