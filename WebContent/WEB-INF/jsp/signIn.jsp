<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- reference our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/semantic.min.css">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700'
	rel='stylesheet' type='text/css'>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/semantic.min.js"></script>
<title>Sign In</title>
</head>
<body>
<nav class="ui fixed menu teal inverted navbar">
	<a href="${pageContext.request.contextPath}/progress" class="item">Vehicle Progress</a>
	<a href="${pageContext.request.contextPath}/signIn" class="item">Sign In</a>
</nav>


<div class="ui segment">

	<h3>Customer Information</h3>

	<form action="saveCustomer" method="POST" class="ui form">
		<fieldset>
			<legend>Customer Information</legend>
				<label>Last Name</label><br>
				<input type="text" name="lastName" /><br>
				<label> First Name</label><br>
				<input type="text" name="firstName" /><br>
				<label>A.F.M.</label><br>
				<input type="number" name="afm" /><br>
		</fieldset>
		<fieldset>
			<legend>Vehicle Information</legend>
				<label>License Plate</label><br>
				<input type="text" name="plate"/><br>
				<label>Release Year</label>
				<input type="number" name="releaseYear"/>
				<label>Vehicle Condition</label><br>
				<select name="condition">
					<option value="bad">Bad</option>
					<option value="medium">Medium</option>
					<option value="good">Good</option>
				</select><br>
				<label>Location</label><br>
				<input type="text" name="location"/><br>
		</fieldset>
		<input class="ui button" type="submit" value="Submit">
	</form>
	<a href="${pageContext.request.contextPath}/"><button type="button" class="ui button">Back</button></a>
</div>
</body>
</html>