package com.springmvc.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "Orders")
public class Order {
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private int Id;
	
	@NotBlank(message="(*)")
	@Column(name = "Username")
	private String Username;

	@NotBlank(message="(*)")
	@Column(name = "Phone")
	private String Phone;

	@NotBlank(message="(*)")
	@Column(name = "Address")
	private String Address;

	@NotBlank(message="(*)")
	@Column(name = "Email")
	private String Email;

	@Column(name = "Note")
	private String Note;

	@Column(name = "Status")
	private boolean Status;

	@Column(name = "OrderTime")
	private Timestamp OrderTime;
	//String s = new SimpleDateFormat("HH:mm dd/MM/yyyy ").format(OrderTime);

	@OneToMany(mappedBy = "Order", fetch = FetchType.EAGER)
	private List<OrderDetail> OrderDetails;

	public Timestamp getOrderTime() {
		return OrderTime;
	}

	public void setOrderTime(Timestamp orderTime) {
		OrderTime = orderTime;
	}

	public int getId() {
		return Id;
	}

	/**
	 * 
	 */
	public Order() {

	}

	public Order(String username, String phone, String address, String email, String note, boolean status,
			Timestamp orderTime) {
		super();		
		Username = username;
		Phone = phone;
		Address = address;
		Email = email;
		Note = note;
		Status = status;
		OrderTime = orderTime;
		
	}

	public List<OrderDetail> getOrderDetails() {
		return OrderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		OrderDetails = orderDetails;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getNote() {
		return Note;
	}

	public void setNote(String note) {
		Note = note;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

}