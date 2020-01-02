package com.springmvc.controller;

import java.sql.Timestamp;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.entity.Feedback;
import com.springmvc.service.FeedbackService;
import com.springmvc.service.MenuService;

@Controller
@RequestMapping("/customer/")
public class CustomerHomeController {
	@Autowired
	MenuService menuService;
	@Autowired
	FeedbackService feedbackService;
	
	@RequestMapping("home")
	public String index(ModelMap model) {		
		model.addAttribute("crtPage", "home");
		model.addAttribute("menus", menuService.getMenusCustomer());
		model.addAttribute("drinks", menuService.getDrinks());
		model.addAttribute("pastries", menuService.getPastries());
		model.addAttribute("feedback", new Feedback());
		return "customer/index";
	}
	
	@RequestMapping(value="add-feedback",method=RequestMethod.POST)
	public String addFeedback(ModelMap model,@Valid @ModelAttribute("feedback") Feedback feedback, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("err");
			model.addAttribute("crtPage", "contact");		
			//model.addAttribute("feedback", new Feedback());		
			return "customer/contact-page";			
		}
		
		Date date= new Date();		
		feedback.setTime(new Timestamp(date.getTime()));
		feedbackService.add(feedback);
		
		
		model.addAttribute("content", "Đã gửi phản hồi thành công!");
		return "customer/checkoutSuccess";
	}

	
	
}
