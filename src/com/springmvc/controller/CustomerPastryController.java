package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.service.MenuService;

@Controller
@RequestMapping("/customer/")
public class CustomerPastryController {
	@Autowired
	MenuService menuService;
	
	@RequestMapping("pastries")
	public String pastryPage(ModelMap model) {
		model.addAttribute("crtPage", "pastry");
		model.addAttribute("pastries", menuService.getPastries());
		
		return "customer/pastry-page";
	}
}
