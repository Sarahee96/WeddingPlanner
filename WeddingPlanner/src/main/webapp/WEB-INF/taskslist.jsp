<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- need this to use c tags -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- need this for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
	
<title>All Wedding Tasks</title>
</head>
<body>

	
	<!-- NAV BAR  -->
	<div class="nav-bar">
		<a href="">Our Wedding</a>
		<a href="">Inspiration</a>
		<h1 class="taskslist-header">Me Plus You</h1>
		<a href="">Schedule</a>
		<a href="/weddings/new">Add A Task</a>
	</div>
	<div class="task-list-background">
		<div class="task-list-title">
			<h1>Welcome <c:out value="${user.partner1}"/> and <c:out value="${user.partner2}"/>!</h1>
		</div>
		
		<div >
			<table class="task-list-table">
				<thead class="task-list-top-row">
					<tr>
					
						<th>Task / Specific Info</th>
						<th>Completed? </th>
						<th>Budget</th>
						<th>Spent</th>
						<th></th>
	
					</tr>	
				</thead>
				<tbody class="task-list-bottom-rows">
					<c:forEach items="${tasks}" var="wedding">
						<tr>
							<td><c:out value="${wedding.task}"/> (<c:out value="${wedding.other}"/>)</td>
							<td> <input type="checkbox" id="complete">  </td>
							<td><c:out value="${wedding.budget}"/></td>
							<td><c:out value="${wedding.spent}"/></td>
							<td class="actions"><form action="/weddings/${wedding.id}/delete" method="post">
	    						<input type="hidden" name="_method" value="delete">
	    						<input type="submit" value="Delete">
								</form>
								<a href="">Edit</a>
							</td>
						
						</tr>
					</c:forEach>	
				</tbody>
			
			</table>
		
		</div>
	
	</div>
	
	
	
	
</body>
</html>