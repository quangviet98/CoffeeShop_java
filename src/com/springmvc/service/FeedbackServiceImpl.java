package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.dao.FeedbackDao;
import com.springmvc.entity.Feedback;

@Service
public class FeedbackServiceImpl implements FeedbackService {
	@Autowired
	FeedbackDao feedbackDao;

	@Transactional
	public void add(Feedback feedback) {
		feedbackDao.add(feedback);
	}

	@Transactional
	public void delete(int feedbackID) {
		feedbackDao.delete(feedbackID);
	}

	@Transactional
	public Feedback getFeedback(int ID) {		
		return feedbackDao.getFeedback(ID);
	}

	@Transactional
	public List<Feedback> getFeedbacks() {	
		return feedbackDao.getFeedbacks();
	}

}
