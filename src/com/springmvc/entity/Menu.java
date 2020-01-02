package com.springmvc.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Menu")
public class Menu {
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int Id;
	
	//@NotEmpty(message="Name không thể trống!")
	@Column(name="Name")
	private String Name;
	
	@Column(name="Img")
	private String Img;
	
	@Column(name="Type")
	private String Type;
	
	@Column(name="Price")
	private int Price;
	
	@Column(name="Discount")
	private int Discount;
	
	@Column(name="Status")
	private boolean Status;
	
	@Column(name="Info")
	private String Info;
	
	@OneToMany(mappedBy="Product", fetch = FetchType.EAGER)
	private List<OrderDetail> OrderDetail;
	
	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getImg() {
		return Img;
	}

	public void setImg(String img) {
		Img = img;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public int getDiscount() {
		return Discount;
	}

	public void setDiscount(int discount) {
		Discount = discount;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public String getInfo() {
		return Info;
	}

	public void setInfo(String info) {
		Info = info;
	}

	/**
	 * @param id
	 * @param name
	 * @param img
	 * @param type
	 * @param price
	 * @param discount
	 * @param status
	 * @param info
	 */
	public Menu(int id, String name, String img, String type, int price, int discount, boolean status, String info) {
		super();
		Id = id;
		Name = name;
		Img = img;
		Type = type;
		Price = price;
		Discount = discount;
		Status = status;
		Info = info;
	}

	public Menu() {
		
	}

}
