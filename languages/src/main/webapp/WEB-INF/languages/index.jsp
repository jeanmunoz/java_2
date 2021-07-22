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
<title>Languages</title>
</head>
<body>
	<div id="container">
		<table class="table table-striped table-hover table-bordered tblbrd">
		    <thead>
		        <tr>
		            <th scope="col">Nombre</th>
		            <th scope="col">Creador</th>
		            <th scope="col">Version</th>
		            <th scope="col">Acción</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${languages}" var="lang">
		        <tr>
		            <td><a href="languages/<c:out value="${lang.id}"/>"><c:out value="${lang.name}"/></a></td>
		            <td><c:out value="${lang.creator}"/></td>
		            <td><c:out value="${lang.currentVersion}"/></td>
		            <td><a href="/languages/delete/<c:out value="${lang.id}"/>">Delete</a> <a href="languages/edit/<c:out value="${lang.id}"/>">Edit</a></td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
		<div id="form">
			<form:form action="/languages" method="post" modelAttribute="addNew">		  
			    <p>
			        <form:label cssClass="label" path="name">Nombre</form:label>
			        <form:input cssClass="box" path="name"/>
			        <form:errors cssClass="red" path="name"/>

			    </p>
			    <p>
			        <form:label cssClass="label" path="creator">Creador</form:label>
			        <form:input cssClass="box" path="creator"/>
    				<form:errors cssClass="red" path="creator"/>
			    </p>
			    <p>
			        <form:label cssClass="label" path="currentVersion">Versión</form:label>
			        <form:input cssClass="box" path="currentVersion"/>
     		 		<form:errors cssClass="red" path="currentVersion"/>
			    </p>
			    <input id="btn" type="submit" value="Enviar" />	 
			</form:form>
		</div>
	</div>
</body>
</html>