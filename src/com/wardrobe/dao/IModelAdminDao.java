package com.wardrobe.dao;

import java.util.List;
import java.util.Map;

import com.wardrobe.entity.Season;

public interface IModelAdminDao {
	// 添加季节
	int addSeason(Season season);

	// 删除季节
	int deleteSeason(int id);

	// 修改季节
	int alterSeason(Season season);

	// 查询季节
	List<Season> queryAllSeason();

	// 添加衣服种类
	int addClotheType(String type);

	// 删除衣服种类
	int deleteClotheType(int id);

	// 修改衣服种类
	int alterClotheType(int id, String type);

	// 查询衣服种类
	List<Map> queryAllType();

}
