<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="tablematch">
	<tr>
		<td><b>puntata</b></td>
		<td><b>vincita</b></td>
		<td><b>saldo</b></td>
		<td><b>data</b></td>

	</tr>
<c:forEach items="${utente}" var="x">

	 
	<tr>
	 
		<td>${x.puntata}</td>
		<td>${x.vincita}</td>
		<td>${x.saldo}</td>
		<td>${x.data}</td>

<td>
<form action="dettagli" id=${ x.storico_giocate_id } method="get"> 
	<input form= ${ x.storico_giocate_id} type="hidden" name="prova1" value=${ x.storico_giocate_id}>
		<button form=${ x.storico_giocate_id } type="submit" > Dettagli</button>
		</form>
	</td>	
</tr>
</c:forEach>
<table class="tablematch">
	<tr>
		<td><b>puntata</b></td>
		<td><b>vincita</b></td>
		<td><b>saldo</b></td>
		<td><b>data</b></td>
		<td><b>data</b></td>

	</tr>
<c:forEach items="${prova}" var="z">

	 
	<tr>
	 
		<td>${z.squadraA}</td>
		<td>${z.squadraB}</td>
		<td>${z.risultatoGiocato}</td>
		<td>${z.p1}</td>
		<td>${z.p2}</td>

</c:forEach>
</body>
</html>