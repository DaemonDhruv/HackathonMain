<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="resources/css/common.css">
<link href="resources/css/style3.css" rel='stylesheet' type='text/css' />



<title>Hackathon</title>
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");

response.setHeader("Expires", "0");
%>

	<form class="register" action="save" method="post">

		<h1 class="register-title">Registeration Page</h1>

		<input type="text" name="gu_name" class="register-input" placeholder=" Enter Full Name" autofocus> 
			<input type="text" name="gu_email" class="register-input" placeholder=" Enter valid Email address" autofocus> 
			<input type="number" name="gu_mobile" class="register-input" placeholder=" Enter Mobile Number"> 
			<br> <input type="date" name="gu_dob" class="register-input" placeholder="Enter DOB:(dd-mmm-yyyy)"> 
			<input type="text" name="gu_city" class="register-input" placeholder="Enter City Name">
			<select name="gu_state" class="select">
			<option value="">Select State</option>
			<option value="Andhra Pradesh">Andhra Pradesh</option>
			<option value="Arunachal Pradesh">Arunachal Pradesh</option>
			<option value="Assam">Assam</option>
			<option value="Bihar">Bihar</option>
			<option value="Chattisgarh">Chattisgarh</option>
			<option value="Goa">Goa</option>
			<option value="Gujrat">Gujrat</option>
			<option value="Haryana">Haryana</option>
			<option value="Himachal Pradesh">Himachal Pradesh</option>
			<option value="Jammu & Kashmir">Jammu & Kashmir</option>
			<option value="Jharkhand">Jharkhand</option>
			<option value="Karnatka">Karnatka</option>
			<option value="Kerala">Kerala</option>
			<option value="Madhya Pradesh">Madhya Pradesh</option>
			<option value="Maharashtra">Maharashtra</option>
			<option value="Manipur">Manipur</option>
			<option value="Meghalaya">Meghalaya</option>
			<option value="Mizoram">Mizoram</option>
			<option value="Nagaland">Nagaland</option>
			<option value="Orissa">Orissa</option>
			<option value="Punjab">Punjab</option>
			<option value="Rajasthan">Rajasthan</option>
			<option value="Sikkim">Sikkim</option>
			<option value="Tamil Nadu">Tamil Nadu</option>
			<option value="Telangana">Telangana</option>
			<option value="Tripura">Tripura</option>
			<option value="Uttarakhand">Uttarakhand</option>
			<option value="Uttar Pradesh">Uttar Pradesh</option>
			<option value="West Bengal">West Bengal</option>
		</select><br>
		<input type="text" name="gu_zipcode" class="register-input" placeholder="Enter PinCode"> 
		<input type="Password" name="gu_password" class="register-input" placeholder="Enter Password"> 
		<input type="submit" value="Register" class="register-button">
		</p>


	</form>
</body>
</html>