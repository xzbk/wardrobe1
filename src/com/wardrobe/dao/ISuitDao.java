package com.wardrobe.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wardrobe.entity.Suit;

public interface ISuitDao {
	// 填加套装
	int addSuit(Suit suit);

	// 删除套装
	int deleteSuit(int id);

	// 修改装信息
	int alterSuit(Suit suit);

	// 查询所有套装
	List<Suit> queryAll(@Param("uid")int uid, @Param("start")int start, @Param("pageSize")int pageSize);

	// 查询单条套装信息
	Suit queryById(int id);

	// 查询热度前4套装信息
	List<Suit> queryAllHot();

	// 分享套装
	int shareSuit(Suit suit);

	// 取消分享套装
	int deShareSuit(Suit suit);

	// 查询所有被分享的套装
	List<Suit> queryAllShare(Suit suid);
	//查询所有记录条数
	int totalRows();
}
