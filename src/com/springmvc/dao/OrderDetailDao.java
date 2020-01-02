package com.springmvc.dao;

import com.springmvc.entity.OrderDetail;

public interface OrderDetailDao {
	public void add(OrderDetail orderDetail);
	public void delete(int orderID);
}
