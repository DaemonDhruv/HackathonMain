<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Insert title here</title>
</head>

<script type="text/javascript"
	src="resources/js/modernizr.custom.min.js"></script>

<!--Timer's Logic here --> 


<script type="text/javascript">
	function timeout() {
		var minute = Math.floor(timeLeft / 60);
		var second = timeLeft % 60;
		
		var sec=checktime(second);
		if (timeLeft <= 0) {
			//$("#form1").submit(); ------> jQuery 
			clearTimeout(tm);
			document.getElementById("form1").submit(); //---->>>>> Using Java Script
		} else {
			document.getElementById("time").innerHTML = minute + ":" + sec;
		}
		timeLeft--;
		var tm = setTimeout(function() {timeout()}, 1000);
	}
	function checktime(msg){
		if(msg<10){
			msg="0"+msg;
		}
		return msg;
	}
</script>
<body onload="timeout()">
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

if(session.getAttribute("username")==null)
	response.sendRedirect("Userlogin.jsp");


%>
	<script type="text/javascript">
		var timeLeft = 2 * 60;
	</script>
	<center><h1>Level 1 Exam</h1></center>
	<h2>
		<div id="time" style="float: right"></div>
	</h2>

	
	<header>
	
	<nav>
		<div class="row clearfix">
			<img src="resources/images/logo.png" class ="logo">
			<ul class="main-nav animated slideInDown">
				<li><a href="#">Home</a></li>
				<li><a href="#">About us</a></li>
				<li><a href="index.html">Logout</a></li>
			    <!-- <li><a href="Registration.html">Register</a></li> -->
			</ul>
			
		</div>

		</nav>
		<div class="main-content-header">
			<div class="questionPanel">
				<h1>Question: ${questionData. getGq_question()}</h1>
				<form action="nextQn.html" method="post">
					<input type="radio" name="op" value="${questionData.getGq_op1_Ans()}">${questionData.getGq_op1()}<br>
					<input type="radio" name="op" value="${questionData.getGq_op2_Ans()}">${questionData.getGq_op2()}<br>
					<input type="radio" name="op" value="${questionData.getGq_op3_Ans()}">${questionData.getGq_op3()}<br>
					<input type="radio" name="op" value="${questionData.getGq_op4_Ans()}">${questionData.getGq_op4()}<br>
		
					<input class="btn btn-2" type="submit" value="Next Question">
				</form>
			</div>
	    </div>
</header>
	
</body>
</html>