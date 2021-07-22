<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
<link rel="stylesheet" href="/css/main.css">
<title><c:out value="${language.name}"/></title>
</head>
<body>
	<div id="container">
	<div id="top">
		<h3><a href="/languages">Dashboard</a></h3><br><br>
	</div>
		<h1><c:out value="${language.name}"/></h1>
		<h1><c:out value="${language.creator}"/></h1>
		<h1><c:out value="${language.currentVersion}"/></h1><br><br>
		<h4><a href="/languages/edit/<c:out value="${language.id}"/>">Edit</a></h4>
		<h4><a href="/languages/delete/<c:out value="${language.id}"/>">Delete</a></h4>
	</div>
</body>
</html>