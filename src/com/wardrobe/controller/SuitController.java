package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.wardrobe.entity.Page;
import com.wardrobe.entity.Suit;
import com.wardrobe.entity.User;
import com.wardrobe.service.SuitService;
import com.wardrobe.utils.FileUploadUtil;

@Controller
public class SuitController {
	@Resource
	private SuitService suitService;

	@RequestMapping("/addSuit")
	public String addSuit(Suit suit, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		String path = request.getServletContext().getRealPath("/upload");
		// 文件上传
		String src = FileUploadUtil.upload(path + "/" + suit.getUid() + "/suit/", file);
		suit.setSrc(src.substring(path.indexOf("upload")));
		suitService.addSuit(suit);
		return "redirect:/goIndex";
	}

	@RequestMapping("/deleteSuit")
	public String deleteSuit(int id,int uid) {
		// TODO Auto-generated method stub
		suitService.deleteSuit(id);
		return "forward:/queryAllSuit?uid="+uid;
	}

	@RequestMapping("/alterSuit")
	public void alterSuit(Suit suit, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		// 文件上传
		if (!"".equals(file.getOriginalFilename())) {
			String path = request.getServletContext().getRealPath("/upload");
			String src = FileUploadUtil.upload(path + "/" + suit.getUid() + "/suit/", file);
			suit.setSrc(src.substring(path.indexOf("upload")));
		}
		suitService.alterSuit(suit);
	}

	@RequestMapping("/queryAllSuit")
	public String queryAll(int uid,HttpServletRequest request) {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		int currentPage = (page != null) ? Integer.parseInt(page) : 1;
		int pageSize = 8;
		Page<Suit> data = suitService.queryAll(uid, currentPage, pageSize);
		int totalPage = data.getTotalPage();
		request.setAttribute("data", data);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("clotheType", "套装");
		return "forward:/goWardrobe";
	}

	@RequestMapping("/querySuitById")
	public String querySuitById(int id, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Suit suit = suitService.queryById(id);
		request.setAttribute("suit", suit);
		return "forward:/goSuitDetail";
	}

	@RequestMapping("/shareSuit")
	public String shareSuit(Suit suit,int page) {
		// TODO Auto-generated method stub
		suitService.shareSuit(suit);
		return "forward:/queryAllSuit?page="+page+"&uid="+suit.getUid();
	}

	@RequestMapping("/deShareSuit")
	public String deShareSuit(Suit suit,int page) {
		// TODO Auto-generated method stub
		suitService.deShareSuit(suit);
		return "forward:/queryAllSuit?page="+page+"&uid="+suit.getUid();
	}

	@RequestMapping("/queryAllShareSuit")
	public String queryAllShareSuit(Suit suid, HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<Suit> suits = suitService.queryAllShare(suid);
		request.setAttribute("suits", suits);
		return "forward:/goSuitShare";
	}
}
