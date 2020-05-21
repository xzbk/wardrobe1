package com.wardrobe.service;

import java.util.List;

import com.wardrobe.entity.Clothe;
import com.wardrobe.entity.Page;

public interface SingleColtheService {
	// 填加套装单品
	boolean addClothe(Clothe clothe);

	// 删除单品
	boolean deleteClothe(int id);

	// 修改服装单品信息
	boolean alterClothe(Clothe clothe);

	// 查询所有服装单品
	List<Clothe> queryAll(int typeId,int uid);

	// 查询单条单品信息
	Clothe queryById(int id);

	// 按照服装类型查询服装信息
	Page<Clothe> queryAllByTypeId(int typeId,int uid, int currentPage, int pageSize);

	// 查询所有热度服装单品
	List<Clothe> queryAllHot();
}
