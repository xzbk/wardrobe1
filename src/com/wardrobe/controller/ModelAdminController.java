package com.wardrobe.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wardrobe.entity.Season;
import com.wardrobe.service.impl.ModelAdminServiceImpl;

@Controller
public class ModelAdminController {

	@Resource
	private ModelAdminServiceImpl modelAdminService;

	@RequestMapping("/addSeason")
	public String addSeason(Season season) {
		// TODO Auto-generated method stub
		modelAdminService.addSeason(season);
		return "";
	}

	@RequestMapping("/deleteSeason")
	public String deleteSeason(int id) {
		// TODO Auto-generated method stub
		modelAdminService.deleteSeason(id);
		return "";
	}

	@RequestMapping("/alterSeason")
	public String alterSeason(Season season) {
		// TODO Auto-generated method stub
		modelAdminService.alterSeason(season);
		return "";
	}

	@RequestMapping("/queryAllSeason")
	public List<Season> queryAllSeason() {
		// TODO Auto-generated method stub
		return modelAdminService.queryAllSeason();
	}

	@RequestMapping("/addClotheType")
	public String addClotheType(String type) {
		// TODO Auto-generated method stub
		modelAdminService.addClotheType(type);
		return "";
	}

	@RequestMapping("/deleteClotheType")
	public String deleteClotheType(int id) {
		// TODO Auto-generated method stub
		modelAdminService.deleteClotheType(id);
		return "";
	}

	@RequestMapping("/alterClotheType")
	public String alterClotheType(int id, String type) {
		// TODO Auto-generated method stub
		modelAdminService.alterClotheType(id, type);
		return "";
	}

	@RequestMapping("/queryAllType")
	public List<Map> queryAllType() {
		// TODO Auto-generated method stub
		return modelAdminService.queryAllType();
	}
}
