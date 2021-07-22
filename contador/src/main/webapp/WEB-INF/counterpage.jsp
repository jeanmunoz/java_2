<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Visit Counter</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
	</head>
	<body>
		<div class="container">
			<h1>Counter of Visits</h1>
			<fieldset>
				<% Integer count = (Integer) session.getAttribute("count"); %>
				<legend>Counter</legend>
				<p>You have visited the home page <c:out value="${count}" /> times</p>
				<p><a href="/reset">Reset Count</a></p>
				<p><a href="/">Visit Home</a></p>
			</fieldset>
		</div>
	</body>
</html>