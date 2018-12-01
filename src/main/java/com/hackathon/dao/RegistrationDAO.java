package com.hackathon.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.hackathon.model.Address;
import com.hackathon.model.User;

public class RegistrationDAO implements RegistrationDAOInterface {
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {


		return jdbcTemplate;


	}



	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {


		this.jdbcTemplate = jdbcTemplate;


	}



	public int saveRegistrationData(User user, Address addr)
	{


		System.out.println("in save data..");

		String addrTableQuery="insert into gr7_address values(ga_id_seq.nextval, '"+addr.getState()+"', '"+addr.getCity()+"', '"+addr.getZipcode()+"')";
		int j = jdbcTemplate.update(addrTableQuery);

		//used TO_DATE to format date string the html5 "date" type gives date in the format of yyyymmdd
		String userTableQuery="insert into gr7_users values(gu_id_seq.nextval,'"+user.getGu_name()+"',"+user.getGu_mobile()+",'"+user.getGu_email()+"', TO_DATE('"+user.getGu_dob()+"','YYYY-MM-DD'), "+addr.getId()+", '"+user.getGu_password()+"')";
		int i= jdbcTemplate.update(userTableQuery);

		return i;
	}

	public boolean validateUser(User user) {


		String email= "select gu_email from gr7_users where gu_email='" + user.getGu_email() + "'";
		String password= "select gu_password from gr7_users where gu_password='" + user.getGu_password() + "'";


		String e = jdbcTemplate.queryForObject(email, String.class);
		System.out.println(e);



		String p = jdbcTemplate.queryForObject(password, String.class);
		System.out.println(p);



		if(user.getGu_email().equals(e) && user.getGu_password().equals(p)) 
			return true;
		else
			return false;


	}

}