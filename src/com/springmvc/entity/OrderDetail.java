package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetail")
public class OrderDetail {
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int Id;
	
	@Column(name="Quantity")
	private int Quantity;
	
	@Column(name="Price")
	private float Price;
	
	@ManyToOne
	@JoinColumn(name="OrderID")
	private Order Order;
	
	@ManyToOne
	@JoinColumn(name="ProductID")
	private Menu Product;
	
	public OrderDetail() {
		
	}
	public OrderDetail( int quantity, float price, Order order, Menu product) {
		super();		
		Quantity = quantity;
		Price = price;
		Order = order;
		Product = product;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}

	public float getPrice() {
		return Price;
	}

	public void setPrice(float price) {
		Price = price;
	}

	public Order getOrder() {
		return Order;
	}

	public void setOrder(Order order) {
		Order = order;
	}

	public Menu getProduct() {
		return Product;
	}

	public void setProduct(Menu product) {
		Product = product;
	}

	
	
	
}
