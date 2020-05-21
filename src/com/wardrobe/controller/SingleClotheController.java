package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.wardrobe.entity.Clothe;
import com.wardrobe.entity.Page;
import com.wardrobe.service.impl.SingleColtheServiceImpl;
import com.wardrobe.utils.FileUploadUtil;

@Controller
public class SingleClotheController {

	@Resource
	private SingleColtheServiceImpl SingleClotheService;

	@RequestMapping("/addClothe")
	public String addClothe(Clothe clothe, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		String path = request.getServletContext().getRealPath("/upload");
		// 文件上传
		String src = FileUploadUtil.upload(path + "/" + clothe.getUid() + "/clothes/", file);
		clothe.setSrc(src.substring(path.indexOf("upload")));
		SingleClotheService.addClothe(clothe);
		return "redirect:/goIndex";
	}

	@RequestMapping("/deleteClothe")
	public String deleteClothe(int id,int uid, HttpServletRequest request) {
		// TODO Auto-generated method stub
		SingleClotheService.deleteClothe(id);
		return "forward:/queryClotheByTypeId?typeId=1&uid="+uid;
	}

	@RequestMapping("/alterClothe")
	public void alterClothe(Clothe clothe, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		// 文件上传
		if (!"".equals(file.getOriginalFilename())) {
			String path = request.getServletContext().getRealPath("/upload");
			String src = FileUploadUtil.upload(path + "/" + clothe.getUid() + "/clothes/", file);
			clothe.setSrc(src.substring(path.indexOf("upload")));
		}
		SingleClotheService.alterClothe(clothe);
	}

	@RequestMapping("/queryAllClothe")
	public List<Clothe> queryAll(int typeId,int uid) {
		// TODO Auto-generated method stub
		return SingleClotheService.queryAll(typeId,uid);
	}

	@RequestMapping("/queryClotheById")
	public String queryById(int id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Clothe clothe = SingleClotheService.queryById(id);
		request.setAttribute("clothe", clothe);
		return "forward:/goSingleDetail";
	}

	@RequestMapping("/queryClotheByTypeId")
	public String queryClotheByTypeId(int typeId,int uid, HttpServletRequest request) {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		int currentPage = (page != null) ? Integer.parseInt(page) : 1;
		int pageSize = 8;
		Page<Clothe> data = SingleClotheService.queryAllByTypeId(typeId,uid, currentPage, pageSize);
		int totalPage = data.getTotalPage();
		request.setAttribute("data", data);
		request.setAttribute("totalPage", totalPage);
		if (typeId == 1) {
			request.setAttribute("clotheType", "上衣");
			request.setAttribute("typeId", 1);
		} else if (typeId == 2) {
			request.setAttribute("clotheType", "下衣");
			request.setAttribute("typeId", 2);
		} else {
			request.setAttribute("clotheType", "鞋子");
			request.setAttribute("typeId", 3);
		}
		return "forward:/goWardrobe";
	}
}
