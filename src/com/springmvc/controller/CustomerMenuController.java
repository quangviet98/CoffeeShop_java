package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.service.MenuService;

@Controller
@RequestMapping("/customer")
public class CustomerMenuController {
	@Autowired
	MenuService menuService;
	@RequestMapping("menu")
	public String menuPage(ModelMap model) {
		model.addAttribute("crtPage", "menu");
		model.addAttribute("menus", menuService.getMenusCustomer());
		return "customer/menu-page";
	}
	

}
