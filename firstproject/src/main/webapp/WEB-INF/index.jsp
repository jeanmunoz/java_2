<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>Hello World...</h1>
	<c:out value="${2+3}"></c:out><br><br>
	<c:out value="${3+7}"></c:out><br><br>
	<c:out value="${firstname2}"></c:out><br><br>
	<c:out value="${coding}"></c:out>
	
</body>
</html>