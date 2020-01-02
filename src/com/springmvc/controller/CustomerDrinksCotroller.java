package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.service.MenuService;

@Controller
@RequestMapping("/customer/")
public class CustomerDrinksCotroller {
	@Autowired
	MenuService menuService;
	
	@RequestMapping("drinks")
	public String drinksPage(ModelMap model) {
		model.addAttribute("crtPage", "drink");
		model.addAttribute("coffees", menuService.getCoffees());
		model.addAttribute("milkTeas", menuService.getMilkTeas());
		model.addAttribute("juices", menuService.getJuices());
		
		return "customer/drinks-page";
	}
	

}
