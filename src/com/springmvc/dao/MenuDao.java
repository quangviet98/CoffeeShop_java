package com.springmvc.dao;

import java.util.List;

import com.springmvc.entity.Menu;

public interface MenuDao {
	public void add(Menu menu);
	public void edit(Menu menu);
	public void delete(int menuID);
	public Menu getMenu(int menuID);
	public List<Menu> getMenus();
	public List<Menu> getMenusCustomer();
	public List<Menu> getJuices();
	public List<Menu> getMilkTeas();
	public List<Menu> getCoffees();
	public List<Menu> getDrinks();
	public List<Menu> getPastries();
}
