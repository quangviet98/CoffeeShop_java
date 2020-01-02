package com.springmvc.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.entity.Menu;
import com.springmvc.entity.Order;
import com.springmvc.entity.OrderDetail;
import com.springmvc.service.MenuService;
import com.springmvc.service.OrderDetailService;
import com.springmvc.service.OrderService;

import net.sf.ehcache.search.expression.Or;

@Controller
public class CartController {
	@Autowired
	MenuService menuService;
	@Autowired
	OrderService orderService;
	@Autowired 
	OrderDetailService orderDetailService;
	
	
	@RequestMapping("customer/view-cart")
	public String viewCart(HttpSession session, ModelMap model) {
		List<OrderDetail> Cart = new ArrayList<OrderDetail>();
		if(session.getAttribute("cart") != null) {
			Cart= (List<OrderDetail>)session.getAttribute("cart");			
		}
		float total=0;
		for(OrderDetail o : Cart) {
			total += o.getPrice();	
		}
		model.addAttribute("cart",Cart);
		model.addAttribute("total",total);
		model.addAttribute("orderDetail", new OrderDetail());
		return "customer/view-cart";
	}
	
	@RequestMapping("/add-cart/{id}")
	public String add(@PathVariable("id") int id, HttpSession session, ModelMap model) {
		//System.out.println(id);
		//List<OrderDetail> Cart;
		List<OrderDetail> Cart = new ArrayList<OrderDetail>();
		if(session.getAttribute("cart") != null) {
			Cart= (List<OrderDetail>)session.getAttribute("cart");
			int i = isExistProduct(Cart, id);
			if(i!=-1) {				
				Cart.get(i).setQuantity(Cart.get(i).getQuantity()+1);			
				Cart.get(i).setPrice(Cart.get(i).getQuantity()*(Cart.get(i).getProduct().getPrice()-(Cart.get(i).getProduct().getPrice()*Cart.get(i).getProduct().getDiscount()/100)));
			}else {
				Cart = addToCart(Cart, id);
			}				
			session.setAttribute("cart", Cart);
			
		}else {			
			Cart = addToCart(Cart, id);
			session.setAttribute("cart", Cart);			
		}
//		float total=0;
//		for(OrderDetail o : Cart) {
//			total += o.getPrice();
//		}
//		
//		model.addAttribute("cart",Cart);
//		model.addAttribute("total",total);
		return "redirect:/customer/view-cart";
	}
	public List<OrderDetail> addToCart(List<OrderDetail> cart, int id){
		Menu item = menuService.getMenu(id);		
		OrderDetail order = new OrderDetail();
		order.setProduct(item);
		order.setQuantity(1);
		order.setPrice(item.getPrice()-(item.getPrice()*item.getDiscount()/100));		
		//System.out.println(order.getPrice());
		cart.add(order);
		
		return cart;
	}
	public int isExistProduct(List<OrderDetail> cart, int id) {		
		for(int i = 0; i< cart.size(); i++) {			
			if(cart.get(i).getProduct().getId()==id) {				
				return i;
			}
		}
		return -1;
	}
	
	@RequestMapping("view-cart/update-cart-item/{id}")
	public String update(@PathVariable("id") int id, HttpServletRequest request) {
		System.out.println(request.getParameter("quantity"));
		
		return "redirect:/customer/view-cart";
	}
	
	@RequestMapping("view-cart/del-cart-item/{id}")
	public String deIitem(@PathVariable("id") int id, HttpSession session) {
		System.out.println(id);
		List<OrderDetail> Cart = (List<OrderDetail>)session.getAttribute("cart");
		int index = isExistProduct(Cart, id);
		Cart.remove(index);
		if(Cart.size()==0) {
			session.invalidate();
		}else {
			session.setAttribute("cart", Cart);
		}
		
		return "redirect:/customer/view-cart";
	}
	
	@RequestMapping(value="customer/checkout", method=RequestMethod.GET)
	public String checkout(ModelMap model, HttpSession session) {
		if(session.getAttribute("cart")==null) {
			model.addAttribute("content", "Giỏ hàng hiện tại chưa có sản phẩm nào!");
			return "customer/checkoutSuccess";
		}
		model.addAttribute("order", new Order());
		return "customer/checkout";
	}
	@RequestMapping(value="customer/checkout", method=RequestMethod.POST)
	public String doCheckout(ModelMap model, HttpSession session,@Validated @ModelAttribute("order") Order order , BindingResult result) {
		//System.out.println(order.getUsername());
		if(result.hasErrors()) {
			return "customer/checkout";
		}
		
		if(session.getAttribute("cart")==null) {
			model.addAttribute("content", "Giỏ hàng hiện tại chưa có sản phẩm nào!");
			return "customer/checkoutSuccess";
		}
		Order Order = new Order();
		Order.setUsername(order.getUsername());
		Order.setPhone(order.getPhone());
		Order.setEmail(order.getEmail());
		Order.setAddress(order.getAddress());
		Order.setNote(order.getNote());		
		Date date = new Date();
        Order.setOrderTime(new Timestamp(date.getTime()));
		orderService.add(Order);
		System.out.println(Order.getId());
		List<OrderDetail> Cart = (List<OrderDetail>)session.getAttribute("cart");
		for(OrderDetail od : Cart) {
			od.setOrder(Order);
			orderDetailService.add(od);
		}
		model.addAttribute("content", "Đặt hàng thành công!");
		session.invalidate();
		return "customer/checkoutSuccess";
	}
}
