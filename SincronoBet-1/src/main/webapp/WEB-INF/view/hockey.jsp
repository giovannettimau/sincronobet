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
<title>Eventi sportivi HOCKEY</title>
</head>
<body id = "pagehockey" class = "img-fluid">
<div class="container mar-top-0">

<div class="container p-3">
<table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>categoria</b></th>
			<th class="text-center"><b>squadraA</b></th>
			<th class="text-center"><b>squadraB</b></th>
			<th class="text-center"><b>quota1</b></th>
			<th class="text-center"><b>quota2</b></th>
			<th class="text-center"><b>operazione</b></th>
		</tr>
	</thead>
<c:forEach items="${attH}" var="z">
	
	<tr>
		<td>${z.categoria}</td>
		<td>${z.squadraA}</td>
		<td>${z.squadraB}</td>
		<td>${z.quota1}</td>
		<td>${z.quota2}</td>
		
	<td style = "text-align: center;">
	
	<c:if test="${not empty utente}">
		<a class="btn btn-success btn-sm" style = "width:100%;" href="riepilogo">Scommetti</a>
		
	</c:if>
	<c:if test="${empty utente}">
		<a class="btn btn-success btn-sm" style = "width:100%;" href="loginutente">Login</a>
</c:if>

	</td>
	
	</tr>
</c:forEach>



</table>
</div>
</div>
</body>
</html>