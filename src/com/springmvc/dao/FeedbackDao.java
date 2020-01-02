package com.springmvc.dao;

import java.util.List;

import com.springmvc.entity.Feedback;

public interface FeedbackDao {
	public void add(Feedback feedback);
	public void delete(int feedbackID);
	public Feedback getFeedback(int ID);
	public List<Feedback> getFeedbacks();
}
