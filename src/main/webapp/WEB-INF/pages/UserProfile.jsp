<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Insert title here</title>
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

response.setHeader("Expires", "0");
%>

<header>
	
	<nav>
		<div class="row clearfix">
			<img src="resources/images/logo.png" class ="logo">
			<ul class="main-nav animated slideInDown">
				<li><a href="index.html">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="logout.html">Logout</a></li>
			</ul>
			
		</div>

		</nav>
		<div class="main-content-header">
		<h1>Welcome <span class="colorchange">${user.getGu_name()}</span>.</h1>
		<a href="Report.html" class="btn btn-1">View Report</a>
		<a href="ExamInstructions.html" class="btn btn-2">Give Exam</a>
	    </div>
</header>
</body>
</html>