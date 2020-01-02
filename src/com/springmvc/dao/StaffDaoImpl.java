package com.springmvc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Staffs;

@Repository
public class StaffDaoImpl implements StaffDao {
	@Autowired
	private SessionFactory factory;
	
	public StaffDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(Staffs staffs) {
		factory.getCurrentSession().save(staffs);

	}

	@Override
	public void edit(Staffs staffs) {
		factory.getCurrentSession().update(staffs);

	}

	@Override
	public void delete(int staffID) {
		factory.getCurrentSession().delete(getStaff(staffID));
	}

	@Override
	public Staffs getStaff(int staffID) {		
		return (Staffs)factory.getCurrentSession().get(Staffs.class,staffID);
	}

	@Override
	public List<Staffs> getStaffs() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM Staffs");
		List<Staffs> list = query.list();
		return list;
	}

}
