<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
<link rel="stylesheet" href="/css/main.css">
<title>Details</title>
</head>
<body>
	<div class="container">
		<div class="top1">
			<h3 class="right"><a href="/dashboard">Dashboard</a></h3>
		</div>
		<h3>Title:  <c:out value="${song.title}"/></h3>
		<h3>Artist:  <c:out value="${song.artist}"/></h3>
		<h3>Rating (1-10):  <c:out value="${song.rating}"/></h3><br><br>
		<h3><a href="/delete/<c:out value="${song.id}"/>">Delete</a></h3>
	</div>
</body>
</html>