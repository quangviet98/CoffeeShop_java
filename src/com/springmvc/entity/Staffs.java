package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Staffs")
public class Staffs {
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private int Id;

	@Column(name = "Name")
	private String Name;

	@Column(name = "Position")
	private String Position;

	@Column(name = "Phone")
	private String Phone;

	@Column(name = "DayOff")
	private int DayOff;

	@Column(name = "Salary")
	private int Salary;

	public Staffs() {

	}

	/**
	 * @param id
	 * @param name
	 * @param position
	 * @param phone
	 * @param dayOff
	 * @param salary
	 */
	public Staffs(int id, String name, String position, String phone, int dayOff, int salary) {
		super();
		Id = id;
		Name = name;
		Position = position;
		Phone = phone;
		DayOff = dayOff;
		Salary = salary;
	}

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

	public String getPosition() {
		return Position;
	}

	public void setPosition(String position) {
		Position = position;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public int getDayOff() {
		return DayOff;
	}

	public void setDayOff(int dayOff) {
		DayOff = dayOff;
	}

	public int getSalary() {
		return Salary;
	}

	public void setSalary(int salary) {
		Salary = salary;
	}

}
