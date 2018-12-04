<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/exam.css">
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Exam</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

if(session.getAttribute("username")==null)
	response.sendRedirect("Userlogin.jsp");


%>
	
	<header>
      <nav>
        <div class="row1">
          <img src="resources/images/logo.png" class ="logo1">
          <ul class="main-nav1 animated slideInDown">
            <li><a href="index.html">Home</a></li>
            <li><a href="index.html">Logout</a></li>
          </ul>
        </div>
      </nav>
    </header>
    
    <div class="card">
      <form action="nextQn.html" method="post">
      	<div class="card-header">
      	  <h3>Question: ${questionData. getGq_question()}</h3>
      	</div>
      	<div class="card-body">
      	  <ul style="list-style-type: disc">
      	    <li class="list-group-item"><input type="radio" name="op" value="${questionData.getGq_op1_Ans()}"> ${questionData.getGq_op1()}</li>
      	    <li class="list-group-item"><input type="radio" name="op" value="${questionData.getGq_op2_Ans()}"> ${questionData.getGq_op2()}</li>
      	    <li class="list-group-item"><input type="radio" name="op" value="${questionData.getGq_op3_Ans()}"> ${questionData.getGq_op3()}</li>
      	    <li class="list-group-item"><input type="radio" name="op" value="${questionData.getGq_op4_Ans()}"> ${questionData.getGq_op4()}</li>
      	  </ul>
      	  <input class="btn btn-primary" type="submit" value="Next Question">
      	</div>
 
      </form>
    </div>
    
</body>
</html>