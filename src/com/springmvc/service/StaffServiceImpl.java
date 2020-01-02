package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.StaffDao;
import com.springmvc.entity.Staffs;
@Service
public class StaffServiceImpl implements StaffService {
	@Autowired
	private StaffDao staffDao;
	
	public StaffServiceImpl() {
		
	}

	@Transactional
	public void add(Staffs staffs) {
		staffDao.add(staffs);

	}

	@Transactional
	public void edit(Staffs staffs) {
		staffDao.edit(staffs);
	}

	@Transactional
	public void delete(int staffID) {
		staffDao.delete(staffID);
	}

	@Transactional
	public Staffs getStaff(int staffID) {		
		return staffDao.getStaff(staffID);
	}

	@Transactional
	public List<Staffs> getStaffs() {		
		return staffDao.getStaffs();
	}

}
