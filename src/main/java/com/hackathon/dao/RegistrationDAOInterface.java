/*
 * @author Dhruv Bindoria
 * @author Priyanka Wadekar
 * @author Aditya Ladhe
 */


package com.hackathon.dao;

import com.hackathon.model.Address;
import com.hackathon.model.Login;
import com.hackathon.model.User;

public interface RegistrationDAOInterface {
	
	
	public int saveRegistrationData(User user, Address addr);
	
	public boolean validateUser(Login login);
	
	
}