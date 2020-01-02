package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.entity.Staffs;
import com.springmvc.service.StaffService;

@Controller
@RequestMapping("/admin/")
public class AdminStaffController {
	@Autowired
	StaffService staffService;

	@RequestMapping("staffs")
	public String staffs(ModelMap model) {
		List<Staffs> list = staffService.getStaffs();
		model.addAttribute("staffs", list);
		return "admin/staff";
	}

	@RequestMapping("add-staff") // show form add
	public String addStaff(ModelMap model) {
		Staffs staff = new Staffs();		
		model.addAttribute("typeSubmit", "add");
		model.addAttribute("title", "Add new staff");
		model.addAttribute("staff", staff);
		
		return "admin/staff-form";
	}

	@RequestMapping(value="saveStaff", params="add")
	public String add(@ModelAttribute("staff") Staffs staff) {	
		System.out.println(staff.getName());
		staffService.add(staff);
		return "redirect:../admin/staffs";
	}
	
	@RequestMapping(value="saveStaff", params="edit")
	public String edit(@ModelAttribute("staff") Staffs staff) {
		staffService.edit(staff);
		return "redirect:../admin/staffs";
	}
	
	@RequestMapping("edit-staff") // push data to form add
	public String editStaff(@RequestParam("staffID") int staffID, ModelMap model) {
		model.addAttribute("title", "Edit info staff");
		model.addAttribute("typeSubmit", "edit");
		model.addAttribute("staff", staffService.getStaff(staffID));
		
		return "admin/staff-form";
	}

	@RequestMapping("delete-staff")
	public String deleteStaff(@RequestParam("staffID") int staffID) {
		staffService.delete(staffID);
		return "redirect:../admin/staffs";
	}

	
	@ModelAttribute("positions")
	public List<String> getPosition() {
		List<String> pos = new ArrayList<>();
		pos.add("Quản lý");
		pos.add("Nhân viên lễ tân");
		pos.add("Nhân viên phục vụ");
		pos.add("Nhân viên order");
		pos.add("Nhân viên bảo vệ");
		pos.add("Nhân viên marketing");
		pos.add("Nhân viên pha chế");
		pos.add("Nhân viên quầy hàng");
		return pos;
	}

}
