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
import com.hackathon.model.Score;
import com.hackathon.model.User;

public class ExamDAO implements ExamDAOInterface {

	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {


		return jdbcTemplate;


	}



	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {


		this.jdbcTemplate = jdbcTemplate;


	}

	public int setScore(User u, int score, String passOrFail) {

		String userTableQuery="insert into gr7_scores values(gs_id_seq.nextval, "+u.getGu_id()+", "+0+", "+score+", '"+passOrFail+"')";
		int i= jdbcTemplate.update(userTableQuery);

		return i;

	}

	//Returns a single row as an object of class Questions based on question id
	public Score findQuestionById(int gs_id) {


		String sql = "SELECT * FROM gr7_scores WHERE gs_id = ?";

		Score score = (Score)getJdbcTemplate().queryForObject(sql, new Object[] { gs_id }, new BeanPropertyRowMapper(Score.class));

		return score;


	}


	//Returns List of objects. These objects are of class Questions and each object represents a row
	public List<Score> getAllScores() {


		String sql = "SELECT * FROM gr7_Score";

		List<Score> Scores  = getJdbcTemplate().query(sql, new BeanPropertyRowMapper(Score.class));

		return Scores;


	}

}
