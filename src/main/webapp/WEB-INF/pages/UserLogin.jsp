<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="resources/js/jquery-1.11.0.min.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style1.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style1.css">
<title>Iogin</title>
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
 
	<form class="login" action="userLogin" method="POST">
    <h1 class="login-title">Login Page</h1>
    <input type="text" name="gu_email" class="login-input" required="required" placeholder=" Enter valid Email Address" autofocus> <!-- -->
    <input type="password" name="gu_password" class="login-input" required="required" placeholder=" Enter Password">
    <input type="submit" value="LogIn" class="login-button">
  <p class="login-lost"><a href="">Forgot Password?</a></p>
  <p class="login-lost"><a href="Registration.html">New User? Register Now</a></p>
  </form>
</body>
</html>