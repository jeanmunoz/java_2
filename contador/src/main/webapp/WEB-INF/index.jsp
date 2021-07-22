<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome!</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
	</head>
	<body>
		<div class="container">
			<h1>Welcome <c:out value="${name}"></c:out>!</h1>
			<fieldset>
				<legend>View Counter</legend><c:out value="${count}"></c:out>  
				<p><a href="/two">Increase Count By 2</a></p>
				<p><a href="/counter">View Count</a></p>
			</fieldset>
		</div>
	</body>
</html>