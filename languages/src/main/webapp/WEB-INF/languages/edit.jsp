<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css">
<title><c:out value="${language.name}"/></title>
</head>
<body>
	<div id="container">
	<div id="top">
		<h4><a href="/languages">Dashboard</a></h4>
		<h4><a href="/languages/delete/<c:out value="${language.id}"/>">Delete</a></h4><br><br>
	</div>
		<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
		    <input type="hidden" name="_method" value="put">
			    <p>
			        <form:label path="name">Nombre</form:label>
			        <form:input  path="name"/>
			        <form:errors  path="name"/>

			    </p>
			    <p>
			        <form:label path="creator">Creador</form:label>
			        <form:input  path="creator"/>
    				<form:errors path="creator"/>
			    </p>
			    <p>
			        <form:label  path="currentVersion">Versión</form:label>
			        <form:input  path="currentVersion"/>
     		 		<form:errors  path="currentVersion"/>
			    </p>
		    <input id="btn" type="submit" value="Enviar"/>
		</form:form>
	</div>
</body>
</html>