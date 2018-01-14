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
<title>Search for Vehicle</title>
</head>
<body>
	<nav class="ui fixed menu teal inverted navbar"> <a
		href="${pageContext.request.contextPath}/progress" class="item">Vehicle
		Progress</a> <a href="${pageContext.request.contextPath}/signIn"
		class="item">Sign In</a> </nav>
	<div class="ui segment">
		<h3>
			<center>Search for your Vehicle</center>
		</h3>

		<form action="vehicle" method="GET" class="ui form">
			<label>Vehicle Plate</label><br> <input name="plate" type="text" /><br>
			<button class="ui button" type="submit">Search</button>
		</form>
		<a href="${pageContext.request.contextPath}/"><button
				class="ui button" type="button">Back</button></a>
	</div>
</body>
</html>