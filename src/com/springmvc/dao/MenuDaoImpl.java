package com.springmvc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Menu;

@Repository
public class MenuDaoImpl implements MenuDao {
	@Autowired
	SessionFactory factory;
	
	
	@Override
	public void add(Menu menu) {
		factory.getCurrentSession().save(menu);

	}

	@Override
	public void edit(Menu menu) {
		factory.getCurrentSession().update(menu);
	}

	@Override
	public void delete(int menuID) {
		factory.getCurrentSession().delete(getMenu(menuID));
	}

	@Override
	public Menu getMenu(int menuID) {
		return (Menu)factory.getCurrentSession().get(Menu.class, menuID);
	}

	@Override
	public List<Menu> getMenus() {		
		return factory.getCurrentSession().createQuery("from Menu").list();
	}

	@Override
	public List<Menu> getMenusCustomer() {		
		return factory.getCurrentSession().createQuery("from Menu M where M.Status = 1").list();
	}

	@Override
	public List<Menu> getDrinks() {		
		return factory.getCurrentSession().createQuery("from Menu M where (M.Type = 'Coffee' OR M.Type = 'MilkTea' OR M.Type = 'Juice') AND M.Status =1").list();
	}

	@Override
	public List<Menu> getPastries() {		
		return factory.getCurrentSession().createQuery("from Menu M where M.Type = 'Pastry' and M.Status = 1").list();
	}

	@Override
	public List<Menu> getJuices() {		
		return factory.getCurrentSession().createQuery("from Menu M where M.Type = 'Juice' and M.Status = 1").list();
	}

	@Override
	public List<Menu> getMilkTeas() {		
		return factory.getCurrentSession().createQuery("from Menu M where M.Type = 'MilkTea' and M.Status = 1").list();
	}

	@Override
	public List<Menu> getCoffees() {		
		return factory.getCurrentSession().createQuery("from Menu M where M.Type = 'Coffee' and M.Status = 1").list();
	}

}
