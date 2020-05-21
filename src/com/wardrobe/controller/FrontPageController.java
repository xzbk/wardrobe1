package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wardrobe.entity.Clothe;
import com.wardrobe.entity.Suit;
import com.wardrobe.service.ModelAdminService;
import com.wardrobe.service.SingleColtheService;
import com.wardrobe.service.SuitService;

/**
 * 初始化页面跳转控制器
 * 
 * @author Administrator
 *
 */
@Controller
public class FrontPageController {

	@Resource
	private ModelAdminService modelAdminService;
	@Resource
	private SuitService suitService;
	@Resource
	private SingleColtheService singleClotheService;

	/**
	 * 跳转到主页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goIndex")
	public String goIndex(HttpServletRequest request) {
		request.setAttribute("suits", suitService.queryAllHot());
		request.setAttribute("clothes", singleClotheService.queryAllHot());
		return "frontstage/index";
	}

	/**
	 * 跳转到衣柜界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goWardrobe")
	public String goWardrobe(HttpServletRequest request) {

		return "frontstage/wardrobe";
	}

	/**
	 * 跳转到分享界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goSuitShare")
	public String goSuitShare(HttpServletRequest request) {

		return "frontstage/suitshare";
	}

	/**
	 * 添加单品页面初始化并跳转
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAddSingle")
	public String goAddSingle(HttpServletRequest request) {
		request.setAttribute("seasons", modelAdminService.queryAllSeason());
		request.setAttribute("types", modelAdminService.queryAllType());
		return "frontstage/addsingle";
	}

	/**
	 * 添加套装页面初始化并跳转
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAddSuit")
	public String goAddSuit(HttpServletRequest request) {
		request.setAttribute("seasons", modelAdminService.queryAllSeason());
		request.setAttribute("types", modelAdminService.queryAllType());
		return "frontstage/addsuit";
	}

	/**
	 * 跳转到添加套装的选择上衣、下衣、鞋子
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goSelectClothe")
	public String goSelectCoat(HttpServletRequest request, int typeId,int uid) {
		request.setAttribute("clothes", singleClotheService.queryAll(typeId,uid));
		request.setAttribute("clotheType", typeId);
		return "frontstage/selectclothe";
	}

	/**
	 * 跳转到套装详情
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goSuitDetail")
	public String goSuitDetail(HttpServletRequest request) {
		return "frontstage/suitdetail";
	}

	/**
	 * 跳转到单品详情
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goSingleDetail")
	public String goSingleDetail(HttpServletRequest request) {
		return "frontstage/singledetail";
	}

	/**
	 * 跳转到用户登录界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goLogin")
	public String goLogin(HttpServletRequest request) {
		return "frontstage/login";
	}
	
	/**
	 * 跳转到用户注册界面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goRegister")
	public String goRegister(HttpServletRequest request) {
		return "frontstage/register";
	}

	/**
	 * 跳转到修改套装界面
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/goAlterSuit")
	public String goAlterSuit(HttpServletRequest request, int id) {
		// TODO Auto-generated method stub
		Suit suit = suitService.queryById(id);
		request.setAttribute("suit", suit);
		request.setAttribute("seasons", modelAdminService.queryAllSeason());
		return "frontstage/altersuit";
	}

	/**
	 * 跳转到修改单品界面
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/goAlterSingle")
	public String goAlterSingle(HttpServletRequest request, int id) {
		// TODO Auto-generated method stub
		Clothe clothe = singleClotheService.queryById(id);
		request.setAttribute("clothe", clothe);
		request.setAttribute("seasons", modelAdminService.queryAllSeason());
		request.setAttribute("types", modelAdminService.queryAllType());
		return "frontstage/altersingle";
	}
	
	/**
	 * 跳转到用户登录中心修改密码页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/goAlterUserPass")
	public String goAlterUserPass(HttpServletRequest request) {
		return "backstage/pass";
	}
}
