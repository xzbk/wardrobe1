package com.wardrobe.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wardrobe.entity.Clothe;

public interface ISingleClotheDao {
	// 填加套装单品
	int addClothe(Clothe clothe);

	// 删除单品
	int deleteClothe(int id);

	// 修改服装单品信息
	int alterClothe(Clothe clothe);

	// 查询所有服装单品
	List<Clothe> queryAll(@Param("typeId")int typeId,@Param("uid")int uid);

	// 查询单条单品信息
	Clothe queryById(int id);

	// 按照服装类型查询服装信息
	List<Clothe> queryAllByTypeId(
			@Param("typeId")int typeId,
			@Param("uid")int uid,
			@Param("start")int start,
			@Param("pageSize")int pageSize
	);
	//查询所有记录条数
	int totalRows(int typeId);

	// 查询所有热度服装单品
	List<Clothe> queryAllHot();
}
