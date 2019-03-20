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
<br>
<br>
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
			<th class="text-center"><b>gioca</b></th>
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
	<div class = "row" style="margin-right:0; 	margin-left:0;">
		<c:if test="${not empty giocatore}">
	<form action="shockey1" id=${ z.quota1 } method="get"> 
	<input form= ${ z.quota1} type="hidden" name="prova1" value=${ z.quota1}>
	<input form= ${ z.quota1 } type="hidden" name="prova1id" value=${ z.id}>
		<button form=${ z.quota1 } class="btn btn-success btn-sm" type="submit" > ${z.quota1}</button>
		</form>
		&nbsp;
		<form action="shockey2" id=${ z.quota2} method="get"> 
		<input form= ${ z.quota2 } type="hidden" name="prova2" value=${ z.quota2}>
		<input form= ${ z.quota2 } type="hidden" name="prova2id" value=${ z.id}>
		<button form=${ z.quota2 } class="btn btn-success btn-sm" type="submit" > ${z.quota2}</button>
		</form>
	</c:if>
	<c:if test="${empty giocatore}">
		<a class="btn btn-success btn-sm" href="loginutente">Login</a>
	   	
		
	</c:if>
	</div>

	</td>
	
	</tr>
	
	
</c:forEach>
</table>
<br>
<hr color="black">
<div class = "row">
<div class = "col-10"></div>
<div class = "col-2">
<a href="risultati" style= "color:limegreen"><b>Riepilogo giocata</b></a><br>
<a href="basket" style= "color:limegreen"><b>Basket</b></a><br>
<a href="calcio" style= "color:limegreen"><b>Calcio</b></a>
</div>
</div>
</div>
</div>
<br>
</body>
</html>