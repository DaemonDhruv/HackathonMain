package com.hackathon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hackathon.dao.RegistrationDAO;
import com.hackathon.model.Address;
import com.hackathon.model.User;


@Controller
public class UserController {
	
	@Autowired
	RegistrationDAO rdao;
	
	
	@RequestMapping("/Registration")
	public ModelAndView redirectToRegisterPage() {
		return new ModelAndView("Registration");
	}
	
	@RequestMapping("/UserLogin")
	public ModelAndView redirectToLoginPage() {
		return new ModelAndView("UserLogin");
	}
	
	@RequestMapping("/save")
	public ModelAndView userRegister(ModelAndView model, @ModelAttribute User user, Address addr)
	{

		System.out.println(user);
		
		int i = rdao.saveRegistrationData(user, addr);

		model.setViewName("UserLogin");

		return model;

		
	}
	
	
	@RequestMapping("/userLogin")
	public ModelAndView userLogin(ModelAndView model, @ModelAttribute User user) {
		

		boolean valid = rdao.validateUser(user);
	
		if(valid) {
		
		
			if(user.getGu_email().equals("admin123@gmail.com") && user.getGu_password().equals("1234")) {
			
				model.setViewName("AdminHome");
				return model;
			
			}
			else {
			
				model.setViewName("UserProfile");
				return model;
			
			}


		}
		else {

			model.setViewName("UserLogin");
			return model;
		
		}
		
	}
}