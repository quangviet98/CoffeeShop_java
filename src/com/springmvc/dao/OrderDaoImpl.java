package com.springmvc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Order;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	SessionFactory factory;	
	

	@Override
	public void add(Order Order) {
		factory.getCurrentSession().save(Order);
	}

	@Override
	public void delete(int OrderID) {
		factory.getCurrentSession().delete(getOrder(OrderID));
	}

	@Override
	public Order getOrder(int OrderID) {		
		return (Order)factory.getCurrentSession().get(Order.class, OrderID);
	}

	@Override
	public List<Order> getOrders() {		
		return factory.getCurrentSession().createQuery("FROM Order O ORDER BY O.OrderTime DESC").list();
	}

	@Override
	public void edit(int OrderID) {
		Session session = factory.getCurrentSession();
		String hql = "update Order o set o.Status=1 where o.Id=:orderID";
        Query query = session.createQuery(hql);
        query.setParameter("orderID", OrderID);
        int a =query.executeUpdate();	
	}

}
