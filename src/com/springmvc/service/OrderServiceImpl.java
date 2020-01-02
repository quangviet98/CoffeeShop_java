package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.OrderDao;
import com.springmvc.entity.Order;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderDao OrderDao;
	
	

	@Transactional
	public void add(Order Order) {
		OrderDao.add(Order);
	}

	@Transactional
	public void delete(int OrderID) {
		OrderDao.delete(OrderID);
	}

	@Transactional
	public Order getOrder(int OrderID) {		
		return OrderDao.getOrder(OrderID);
	}

	@Transactional
	public List<Order> getOrders() {		
		return OrderDao.getOrders();
	}

	@Transactional
	public void edit(int OrderID) {
		OrderDao.edit(OrderID);
	}

}
