package com.springmvc.service;

import java.util.List;

import com.springmvc.entity.Staffs;

public interface StaffService {
	
	public void add(Staffs staffs);
	public void edit(Staffs staffs);
	public void delete(int staffID);
	public Staffs getStaff(int staffID);
	public List<Staffs> getStaffs();
}
