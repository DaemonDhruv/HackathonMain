<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" href="resources/css/bootstrap.css">
 <link rel="stylesheet" href="resources/css/common.css">
 <link rel="stylesheet" href="resources/css/exam.css">
 <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css"> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<title>Instructions</title>
</head>
<body>

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
    
    <div class="card text-center">
      <div class="card-header">
        <h3>Instructions for the Exam</h3>
      </div>
      <div class="card-body">
        <ul style="list-style-type: disc">
          <li class="list-group-item">Exam contains 30 Multiple Choice Questions</li>
          <li class="list-group-item">Total time for the Exam is 15 Minutes</li>
          <li class="list-group-item">Every question contains 1 mark each</li>
          <li class="list-group-item">You need to score above 60% to clear the exam</li>
          <li class="list-group-item">You can finish the exam at any time</li>
          <li class="list-group-item">You can change your answers before submitting</li>
        </ul>
        <a class="btn btn-primary" href="startExam.html">Start Exam</a>
      </div>
      <div class="card-footer text-muted">
        Good luck for the test.
      </div>
    </div>

</body>
</html>