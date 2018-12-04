package com.hackathon.dao;

import org.springframework.jdbc.core.JdbcTemplate;

public class RemoveExcelDAO implements RemoveExcelDAOInterface {
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {


		return jdbcTemplate;


	}



	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {


		this.jdbcTemplate = jdbcTemplate;


	}


//Remove excel 
	public int removeExcel() {
		
		String removeTableQuery="truncate table gr7_questions";
		int i = jdbcTemplate.update(removeTableQuery);
		return i;
	}
}
