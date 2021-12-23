<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- need for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- need this to use c tags -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS links!!! -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/app.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Birthstone+Bounce:wght@500&display=swap" rel="stylesheet">

<title>Add a Task</title>
</head>
<body>

<!-- NAV BAR  -->
	<div class="nav-bar">
		<a href="">Our Wedding</a>
		<a href="">Inspiration</a>
		<h1 class="taskslist-header">You Plus Me</h1>
		<a href="">Schedule</a>
		<a href="/weddings">All Tasks</a>
	</div>
	<div class="create-background">


		<h1 class="create-task-title">Add to your List</h1>
	
		<form:form action="/weddings/new" method="post" modelAttribute="newtask" class="create-task-form">
		<!-- make a hidden input with name user or form hidden -->
		<input id="user" name="userID" type="hidden" value="${user_id}"/>
			<p>Choose task:
				<form:select id="task" name="task" path="task">
					 <option value="Rings">Rings</option>
					 <option value="Groom's Tux">Grooms Tux</option>
	  				 <option value="Wedding Dress">Wedding Dress</option>
	  				 <option value="Bridesmaid Dress">Bridesmaid Dress</option>
	  				 <option value="Guest List">Guest List</option>
					 <option value="Brides Wedding Party">Brides Wedding Party</option>
					 <option value="Grooms Wedding Party">Grooms Wedding Party</option>
					 <option value="Wedding Venue">Wedding Venue</option>
					 <option value="Reception Venue">Reception Venue</option>
					 <option value="Wedding Cake">Wedding Cake</option>
					 <option value="Desserts">Desserts</option>
					 <option value="Alcohol">Alcohol</option>
					 <option value="Invitations">Invitations</option>
					 <option value="Save The Dates">Save The Dates</option>
					 <option value="Food">Food</option>
					 <option value="Photographer">Photographer</option>
					 <option value="Videographer">Videographer</option>
					 <option value="DJ">DJ</option>
					 <option value="Band">Band</option>
					 <option value="Officient">Officient</option>
					 <option value="Register Marriage">Register Marriage</option>
					 <option value="Registration Papers">Registration Papers</option>
					 <option value="Stationary">Stationary</option>
					 <option value="Flowers">Flowers</option>
					 <option value="Wedding Venue Decor">Wedding Venue Decor</option>
					 <option value="Reception Decor">Reception Decor</option>
					 <option value="Tux Fittings">Tux Fittings</option>
					 <option value="Dress Fittings">Dress Fittings</option>
					 <option value="Wedding Timeline">Wedding Timeline</option>
					 <option value="Groom Shoes">Groom Shoes</option>
					 <option value="Bride Shoes">Bride Shoes</option>
					 <option value="Jewlery">Jewlery</option>
					 <option value="Accessories">Accessories</option>
					 <option value="Guest Favors">Guest Favors</option>
					 <option value="Sign In Book">Sign In Book</option>
					 <option value="Parking">Parking</option>
					 <option value="Transportation">Transportation</option>
					 <option value="Activities">Activities</option>
					 <option value="Table Centerpieces">Table Centerpieces</option>
				 	<option value="Flower Child">Flower Child</option>
					 <option value="Ring Bearer">Ring Bearer</option>
				 	<option value="Extra Expenses">Extra Expenses</option>
				 	<option value="Other">Other</option>
				</form:select> 
			</p>
	
	   	 <p>
 	      	 <form:label path="other">Specifics (Who's outfit?, What food?, etc.):</form:label>
 	      	 <form:errors path="other"/>
 	     	  <form:input path="other"/>
 	 	  </p>
    
    
 	 	  <p>
 	     	  <form:label path="budget">Budget for task:</form:label>
  	     	 <form:errors path="budget"/>
     	 	  <form:input type="number" path="budget"/>
 	  	 </p>
    
  	 	 <p>
       		 <form:label path="spent">How much you have spent (if already done):</form:label>
        		<form:errors path="spent"/>
        		<form:input type="number" path="spent"/>
   		 </p>
    
    		<input type="submit" value="Add Task" class="create-task-button"/>
		</form:form>    
	</div>	
</body>
</html>