<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- need for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS links!!! -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/app.js"></script>
<title>You Plus Me Register and Login</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Birthstone+Bounce:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<div class="login-background">
	
	
	<h1 class="login-header">Me Plus You </h1>
	<!--  <img alt="two-linked-hearts.jpg" src="/WeddingPlanner/src/main/resources/static/images">   -->
	<div class="form-layout">
	
		<div class="register">
			<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="form-group">
					<label>Partner 1's First Name:</label>
					<form:input path="partner1" class="form-control" />
					<form:errors path="partner1" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Partner 2's First Name:</label>
					<form:input path="partner2" class="form-control" />
					<form:errors path="partner2" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Email:</label>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Password:</label>
					<form:password path="password" class="form-control" />
					<form:errors path="password" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Confirm Password:</label>
					<form:password path="confirm" class="form-control" />
					<form:errors path="confirm" class="text-danger" />
				</div>
				<input type="submit" value="Start Planning" class="btn-primary" />
			</form:form>
		</div>
	
		<div class="login">
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<div class="form-group">
				<form:errors path="*" class="text-danger"/>
					<label>Email:</label>
					<form:input path="email" class="form-control" />

				</div>
				<div class="form-group">
					<label>Password:</label>
					<form:password path="password" class="form-control" />
				</div>
				<input type="submit" value="Login" class="btn-success" />
			</form:form>
		</div>
		
	</div>
	
	</div>
		
		
</body>
</html>