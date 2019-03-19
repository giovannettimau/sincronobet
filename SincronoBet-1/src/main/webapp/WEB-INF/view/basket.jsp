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
<title>Eventi sportivi BASKET</title>

</head>
<body id="pagebasket" class = "img-fluid">
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
<c:forEach items="${attB}" var="y">
	
	<tr>
		<td>${y.categoria}</td>
		<td>${y.squadraA}</td>
		<td>${y.squadraB}</td>
		<td>${y.quota1}</td>
		<td>${y.quota2}</td>
	
	<td style = "text-align: center;">
<div class = "row" style="margin-right:0; 	margin-left:0;">
	<c:if test="${not empty giocatore}">
	<form action="sbasket1" id=${ y.quota1 } method="get"> 
	<input form= ${ y.quota1} type="hidden" name="prova1" value=${ y.quota1}>
	<input form= ${ y.quota1 } type="hidden" name="prova1id" value=${ y.id}>
		<button form=${ y.quota1 } class="btn btn-success btn-sm" type="submit"> ${y.quota1}</button>
		</form>
		&nbsp;
		<form action="sbasket2" id=${ y.quota2} method="get"> 
		<input form= ${ y.quota2 } type="hidden" name="prova2" value=${ y.quota2}>
		<input form= ${ y.quota2 } type="hidden" name="prova2id" value=${ y.id}>
		<button form=${ y.quota2 } class="btn btn-success btn-sm" type="submit"> ${y.quota2}</button>
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
<a href="risultati" style= "color:#660000"><b>Riepilogo giocata</b></a><br>
<a href="hockey" style= "color:#660000"><b>Hockey</b></a><br>
<a href="calcio" style= "color:#660000"><b>Calcio</b></a>
</div>
</div>
</div>
</div>
<br>
</body>
</html>