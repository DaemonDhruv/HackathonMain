<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="resources/js/jquery-1.11.0.min.js"></script>

<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>

<title>Hackathon</title>
</head>

<header>
	
	<nav>
		<div class="row clearfix">
			<img src="resources/images/logo.png" class ="logo">
			<ul class="main-nav animated slideInDown">
				<li><a href="index.html">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="index.html">Logout</a></li>
			    <!-- <li><a href="Registration.html">Register</a></li> -->
			</ul>
			
		</div>

	</nav>
	
	<div class="main-content-header" align="center">
	<h1>Hi ${user.getGu_name()}<br>Your score is: ${scoreCounter} <br> Remark: <span class="colorchange"> ${remark}</span>.</h1>

	</div>
	
</header>


<body>
	
</body>
</html>