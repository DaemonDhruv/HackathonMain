<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page errorPage="/error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/css/style4.css">
	<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 

<script src="resources/js/jquery-1.11.0.min.js"></script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>

<title>Welcome Admin</title>
</head>
<body>

<header>
	
	<nav>
		<div class="row clearfix">
			<img src="images/logo.png" class ="logo">
			<ul class="main-nav animated slideInDown">
				<li><a href="#">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="#">Login</a></li>
			    <li><a href="#">Register</a></li>
			</ul>
			
		</div>

		</nav>
		<div class="main-content-header">
		<h1>Welcome to <span class="colorchange">HACKATHON</span>.<br>Online Exam System</h1>
		<a href="#" class="btn btn-1">View Report</a><br><br>
		<a href="${pageContext.request.contextPath}/upload" class="btn btn-2">Add Files</a><br><br>
		<a href="#" class="btn btn-1">Remove Files</a>
	    </div>
</header>

</body>


</html>