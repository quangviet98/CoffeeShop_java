package com.springmvc.service;

import com.springmvc.entity.OrderDetail;

public interface OrderDetailService {
	public void add(OrderDetail orderDetail);
	public void delete(int orderID);
}
