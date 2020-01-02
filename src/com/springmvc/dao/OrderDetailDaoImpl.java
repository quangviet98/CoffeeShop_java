package com.springmvc.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.OrderDetail;

@Repository
public class OrderDetailDaoImpl implements OrderDetailDao {
	@Autowired
	SessionFactory factory;
	
	@Override
	public void delete(int orderID) {
		Session session = factory.openSession();		
		Transaction t = session.beginTransaction();
		String hql = "delete from OrderDetail where OrderID="+orderID;
		Query query = session.createQuery(hql);
		try {			
			query.executeUpdate();
			t.commit();			
		}catch(Exception e) {
			t.rollback();			
		}finally {
			session.close();
		}

	}

	@Override
	public void add(OrderDetail orderDetail) {
		factory.getCurrentSession().save(orderDetail);
	}

}
