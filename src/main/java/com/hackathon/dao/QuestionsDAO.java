/*
 * @author Dhruv Bindoria
 * @author Priyanka Wadekar
 * @author Aditya Ladhe
 */


package com.hackathon.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.hackathon.model.Questions;

public class QuestionsDAO implements QuestionsDAOInterface {
	
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		
		
		return jdbcTemplate;
		
		
	}
	
	
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		
		
		this.jdbcTemplate = jdbcTemplate;
		
		
	}
	
	
	
	
	//Returns a single row as an object of class Questions based on question id
	public Questions findQuestionById(int gq_id) {
		 
		
		String sql = "SELECT * FROM gr7_questions WHERE gq_id = ?";
	 
		Questions question = (Questions)getJdbcTemplate().queryForObject(sql, new Object[] { gq_id }, new BeanPropertyRowMapper(Questions.class));
		
		return question;
	
	
	}
	
	
	//Returns List of objects. These objects are of class Questions and each object represents a row
	public List<Questions> getAllQuestions() {
		
		
		String sql = "SELECT * FROM gr7_Questions";
			
		List<Questions> Questions  = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Questions.class));
			
		return Questions;

	
	}
}