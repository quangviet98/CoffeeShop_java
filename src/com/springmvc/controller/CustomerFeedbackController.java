package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.entity.Feedback;

@Controller
@RequestMapping("/customer")
public class CustomerFeedbackController {
	
	@RequestMapping("contact")
	public String contactPage(ModelMap model) {
		model.addAttribute("crtPage", "contact");		
		model.addAttribute("feedback", new Feedback());		
		return "customer/contact-page";
	}
}
