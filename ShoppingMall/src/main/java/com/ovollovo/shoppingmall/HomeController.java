package com.ovollovo.shoppingmall;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ovollovo.shoppingmall.service.GoodsService;
import com.ovollovo.shoppingmall.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	GoodsService goodsService;

	@ModelAttribute("contextPath")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("newGoods", goodsService.getNewGoods(4));
		model.addAttribute("bestGoods", goodsService.getBestGoods(4));
		return "index";
	}
	
	

}
