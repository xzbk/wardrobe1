package com.wardrobe.service;

import java.util.List;

import com.wardrobe.entity.Page;
import com.wardrobe.entity.Suit;

public interface SuitService {
	// 填加套装
	boolean addSuit(Suit suit);

	// 删除套装
	boolean deleteSuit(int id);

	// 修改装信息
	boolean alterSuit(Suit suit);

	// 查询所有套装
	Page<Suit> queryAll(int uid, int currentPage, int pageSize);

	// 查询单条用户信息
	Suit queryById(int id);

	// 查询热度前4套装信息
	List<Suit> queryAllHot();

	// 分享套装
	boolean shareSuit(Suit suit);

	// 取消分享套装
	boolean deShareSuit(Suit suit);

	// 查询所有被分享的套装
	List<Suit> queryAllShare(Suit suid);
}
