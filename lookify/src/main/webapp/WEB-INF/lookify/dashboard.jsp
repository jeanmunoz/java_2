<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<title>Lookify</title>
</head>
<body>
	<Div class="container">
		<div class="top">
			<h3 class="left"><a href="/songs/new">Agregar nueva</a></h3>
			<h3 class="left"><a href="/search/topten">Top ten</a></h3>
			<div class="formright">
				<form action="/search" method="post">
					<input class="form" type="submit" value="Buscar Artista">
					<input class="form" type="search" name="artist" placeholder="Artista">
				</form>
			</div>
		</div>
		<table class="table table-striped table-hover table-bordered tblbrd blkbrd">
		    <thead>
		        <tr>
		            <th scope="col">Título</th>
		            <th scope="col">Rating</th>
		            <th scope="col">Acción</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${songs}" var="song">
		        <tr>
		            <td><a href="songs/<c:out value="${song.id}"/>"><c:out value="${song.title}"/></a></td>
		            <td><c:out value="${song.rating}"/></td>
		            <td><a href="/delete/<c:out value="${song.id}"/>">Borrar</a></td>
		        </tr>
		        </c:forEach>
		    </tbody>
		</table>
	</Div>
</body>
</html>