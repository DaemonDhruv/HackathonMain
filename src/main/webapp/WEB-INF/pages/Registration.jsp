<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
<!-- Common css -->
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<!-- Main css -->
<link rel="stylesheet" type="text/css" href="resources/css/loginregister.css">
<!-- Font Icon -->
<link rel="stylesheet" href="resources/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">


<!-- Js lib for dynamic drop list of countries and state -->
<script src="resources/js/dynamicdropdown.js"></script>


<title>Hackathon</title>
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

response.setHeader("Expires", "0");
%>

	<header>
      <nav>
        <div class="row1">
          <img src="resources/images/logo.png" class ="logo1">
          <ul class="main-nav1 animated slideInDown">
            <li><a href="index.html">Home</a></li>
            <li><a href="#">About us</a></li>
          </ul>
        </div>
      </nav>
    </header>





 	<div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form action="save" method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="gu_name" id="name" placeholder="Full Name as per on 10th Marksheet"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="gu_email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="mobile"><i class="zmdi zmdi-smartphone-iphone"></i></label>
                                <input type="number" name="gu_mobile" id="mobile" placeholder="Your mobile no."/>
                            </div>
                            <div class="form-group">
                            	<label for="dob"><i class="zmdi zmdi-calendar"></i></label>
                            	<input type="date" name="gu_dob" id="dob" placeholder="Select date of birth"/>
                        	</div>
                        	<div class="form-group">
                        		<label for="state"><i class="zmdi zmdi-globe"></i></label>
								<input type="text" name="gu_state" id="dob" placeholder="Select your state"/>
                        		<!--  <select name="gu_state" id="state" placeholder="Select country"></select>-->
                        		<!--  <option value="" selected="selected">Please select state first</option>-->
                    		</div>
                    		<div class="form-group">
                    			<label for="city"><i class="zmdi zmdi-map"></i></label>
                    			<input type="text" name="gu_city" id="city" placeholder="Select your city"/>
                    			<!--  <select name="gu_city" id="city" placeholder="Select city"></select>-->
                			</div>
                			<div class="form-group">
                             	<label for="zipcode"><i class="zmdi zmdi-pin"></i></label>
                            	<input type="number" name="gu_zipcode" id="zipcode" placeholder="Zip Code"/>
                         	</div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="gu_password" id="pass" placeholder="Password"/>
                            </div>
                        
                   		</div>
                    	<div class="signup-image">
                        	<figure><img src="resources/images/signup-image.jpg" alt="sing up image"></figure>
                       		<a href="UserLogin.html" class="signup-image-link">I am already member</a>
                        	<div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        	</div>
                        	<div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>


	</div>	
	
	<script language="javascript">
            populateCountries("country", "state");
            populateCountries("country2");
    </script>
</body>
</html>