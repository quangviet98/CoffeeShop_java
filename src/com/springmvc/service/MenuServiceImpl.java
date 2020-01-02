package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.MenuDao;
import com.springmvc.entity.Menu;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	MenuDao menuDao;
	public MenuServiceImpl() {		
	}

	@Transactional
	public void add(Menu menu) {
		menuDao.add(menu);
	}

	@Transactional
	public void edit(Menu menu) {
		menuDao.edit(menu);
	}

	@Transactional
	public void delete(int menuID) {
		menuDao.delete(menuID);
	}

	@Transactional
	public Menu getMenu(int menuID) {
		return menuDao.getMenu(menuID);
	}

	@Transactional
	public List<Menu> getMenus() {		
		return menuDao.getMenus();
	}

	@Transactional
	public List<Menu> getMenusCustomer() {		
		return menuDao.getMenusCustomer();
	}

	@Transactional
	public List<Menu> getDrinks() {	
		return menuDao.getDrinks();
	}

	@Transactional
	public List<Menu> getPastries() {		
		return menuDao.getPastries();
	}

	@Transactional
	public List<Menu> getJuices() {		
		return menuDao.getJuices();
	}

	@Transactional
	public List<Menu> getMilkTeas() {		
		return menuDao.getMilkTeas();
	}

	@Transactional
	public List<Menu> getCoffees() {		
		return menuDao.getCoffees();
	}

}
