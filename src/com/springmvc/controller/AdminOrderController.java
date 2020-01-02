package com.springmvc.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.entity.Order;
import com.springmvc.entity.OrderDetail;
import com.springmvc.service.OrderDetailService;
import com.springmvc.service.OrderService;

@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminOrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailService orderDetailService;
	
	
	@RequestMapping("orders")
	public String getOrders(ModelMap model) throws ParseException {
		
		List<Order> list = orderService.getOrders();
		model.addAttribute("orders", list);
//		for (Order o : list) {
//			String formattedDate = new SimpleDateFormat("HH:mm dd/MM/yyyy").format(o.getOrderTime());
//			Timestamp orderTime = new Timestamp(new SimpleDateFormat("HH:mm dd/MM/yyyy").parse(formattedDate).getTime());
//			o.setOrderTime(orderTime);  			
//		}

		return "admin/order";
	}
	
	@RequestMapping("order-detail")
	public String getOrder(@RequestParam("orderID") int orderID, ModelMap model) {	
		Order o =  orderService.getOrder(orderID);
		float total = 0;
		for(OrderDetail od : o.getOrderDetails()) {
			total += od.getPrice();
		}
		model.addAttribute("total", total);
		model.addAttribute("order",o);
		return "admin/order-detail";
	}
	@RequestMapping("delete-order")
	public String deleteOrder(@RequestParam("orderID") int orderID) {
		orderDetailService.delete(orderID);
		orderService.delete(orderID);
		
		return "redirect:../admin/orders";
	}
	
	@RequestMapping("update")
	public String update(@RequestParam("OrderID") int orderID) {		
		orderService.edit(orderID);    
       	
		return "redirect:../admin/orders";
	}
	
}
