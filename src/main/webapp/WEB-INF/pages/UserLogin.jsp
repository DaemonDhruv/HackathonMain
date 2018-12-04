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

<title>Login</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

response.setHeader("Expires", "0");

if(session.getAttribute("username")==null)
	response.sendRedirect("UserLogin.jsp");

%>
 <%=session.getAttribute("username") %>
 
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
    
    
     <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="resources/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="Registration.html" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form action="userLogin" method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="gu_email" id="your_name" placeholder="Your email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="gu_password" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </div>
    
</body>
</html>