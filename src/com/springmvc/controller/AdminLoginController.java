package com.springmvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.entity.Admin;


@Transactional
@Controller
@RequestMapping("/admin/")

public class AdminLoginController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String loginPage(ModelMap model) {
		model.addAttribute("admin", new Admin());
		return "admin/login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, @Validated @ModelAttribute("admin")Admin account,  BindingResult errors) {
		if(errors.hasErrors()) {			
			return "admin/login";
		}
		
		String email = account.getEmail();
		String password = account.getPassword();
		
		Session session = factory.getCurrentSession();
		String hql = "from Admin A where A.email=:email and A.password=:password";
		Query query = session.createQuery(hql);
		query.setParameter("email", email);
		query.setParameter("password", password);
		List<Admin> admin = query.list();
		
		if(!admin.isEmpty()) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("admin", admin.get(0).getEmail());
			return "redirect:../admin/orders";
		}
		return "redirect:../admin/login";
	}
	@RequestMapping("logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		//System.out.println(request.getContextPath());
		response.sendRedirect(request.getContextPath()+"/admin/login");
	}
}
