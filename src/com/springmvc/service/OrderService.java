package com.springmvc.service;

import java.util.List;

import com.springmvc.entity.Order;

public interface OrderService {
	public void add(Order Order);
	public void delete(int OrderID);
	public void edit(int OrderID);
	public Order getOrder(int OrderID);
	public List<Order> getOrders();
}
