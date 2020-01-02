package com.springmvc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.entity.Feedback;

@Repository
public class FeedbackDaoImpl implements FeedbackDao {
	@Autowired
	SessionFactory factory;
	
	@Override
	public void add(Feedback feedback) {
		factory.getCurrentSession().save(feedback);
	}

	@Override
	public void delete(int feedbackID) {
		factory.getCurrentSession().delete(getFeedback(feedbackID));
	}

	@Override
	public Feedback getFeedback(int ID) {		
		return (Feedback)factory.getCurrentSession().get(Feedback.class, ID);
	}

	@Override
	public List<Feedback> getFeedbacks() {		
		return factory.getCurrentSession().createQuery("from Feedback").list();
	}

}
