<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- need this to use c tags -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- need this for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Wedding Page</title>
</head>
<body>

	<h1><c:out value="${user.partner1}"/> and <c:out value="${user.partner2}"/>'s Wedding</h1>
	
	<h3>Budget</h3>
	
	<h3>Currently Spent</h3>
	
	
	
</body>
</html>