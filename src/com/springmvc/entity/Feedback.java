package com.springmvc.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="Feedback")
public class Feedback {
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int Id;
	
	@NotBlank(message="(*)")
	@Column(name="Username")
	private String Username;

	@NotBlank(message="(*)")
	@Column(name="Email")
	private String Email;
	
	@NotBlank(message="(*)")
	@Column(name="Phone")
	private String Phone;
	
	@Column(name="Time")
	private Timestamp Time;
	
	@NotBlank(message="(*)")
	@Column(name="Message")
	private String Message;
	
	public int getId() {
		return Id;
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

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public Timestamp getTime() {
		return Time;
	}

	public void setTime(Timestamp time) {
		Time = time;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}

	
	
	public Feedback() {
		
	}

	/**
	 * @param username
	 * @param email
	 * @param phone	
	 * @param message
	 */
	public Feedback(String username, String email,Timestamp time, String phone, String message) {
		super();
		Username = username;
		Email = email;
		Time = time;
		Phone = phone;		
		Message = message;
	}

}
