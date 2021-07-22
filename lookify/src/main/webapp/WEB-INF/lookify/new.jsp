<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
<link rel="stylesheet" href="/css/main.css">
<title>Add Song</title>
</head>
<body>
	<div class="container">
		<div class="top1">
			<h3 class="right"><a href="/dashboard">Dashboard</a></h3>
		</div>
		<form:form action="/process" method="post" modelAttribute="addNew">		  
		    <h3>
		        <form:label cssClass="label left" path="title">Título:</form:label>
		        <form:input cssClass="box" path="title"/>
		        <form:errors cssClass="red" path="title"/>

		    </h3>
		    <h3>
		        <form:label cssClass="label left" path="artist">Artista:</form:label>
		        <form:input cssClass="box" path="artist"/>
   				<form:errors cssClass="red" path="artist"/>
		    </h3>
		    <h3>
		        <form:label cssClass="label left" path="rating">Rating:</form:label>
		        <form:select cssClass="box" path="rating">
		        	<form:option value="1">1</form:option>
		        	<form:option value="2">2</form:option>
		        	<form:option value="3">4</form:option>
		        	<form:option value="4">4</form:option>
		        	<form:option value="5">5</form:option>
		        	<form:option value="6">6</form:option>
		        	<form:option value="7">7</form:option>
		        	<form:option value="8">8</form:option>
		        	<form:option value="9">9</form:option>
		        	<form:option value="10">10</form:option>
		        </form:select>
    		 	<form:errors cssClass="red" path="rating"/>
		    </h3>
		    <input id="btn" type="submit" value="Agregar Canción"/>	 
		</form:form>
	</div>
</body>
</html>