package com.wardrobe.service;

import java.util.List;
import java.util.Map;

import com.wardrobe.entity.Season;

public interface ModelAdminService {
	// 添加季节
	boolean addSeason(Season season);

	// 删除季节
	boolean deleteSeason(int id);

	// 修改季节
	boolean alterSeason(Season season);

	// 查询季节
	List<Season> queryAllSeason();

	// 添加衣服种类
	boolean addClotheType(String type);

	// 删除衣服种类
	boolean deleteClotheType(int id);

	// 修改衣服种类
	boolean alterClotheType(int id, String type);

	// 查询衣服种类
	List<Map> queryAllType();

}
