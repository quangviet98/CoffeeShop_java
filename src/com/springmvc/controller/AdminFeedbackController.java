package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.service.FeedbackService;

@Controller
@RequestMapping("/admin/")
public class AdminFeedbackController {
	@Autowired
	FeedbackService feedbackService;
	
	@RequestMapping("feedback")
	public String feedback(ModelMap model) {
		
		model.addAttribute("feedbacks", feedbackService.getFeedbacks());	
		
		return "admin/feedback";
	}
	
	@RequestMapping("delete-feedback")
	public String delete(@RequestParam("feedbackID")int feedbackID) {
		feedbackService.delete(feedbackID);
		return "redirect:../admin/feedback";
	}

}
