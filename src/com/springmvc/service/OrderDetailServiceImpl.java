package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.OrderDetailDao;
import com.springmvc.entity.OrderDetail;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Transactional
	public void delete(int orderID) {		
		orderDetailDao.delete(orderID);
	}

	@Transactional
	public void add(OrderDetail orderDetail) {
		orderDetailDao.add(orderDetail);
	}

}
