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
<title>Eventi sportivi CALCIO</title>
</head>
<body id = "pagecalcio" class = "img-fluid">
<div  class="container mar-top-0">

<div class="container p-3">
<table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>partite</b></th>
			<th class="text-center"><b>squadraA</b></th>
			<th class="text-center"><b>squadraB</b></th>
			<th class="text-center"><b>quota1</b></th>
			<th class="text-center"><b>quotaX</b></th>
			<th class="text-center"><b>quota2</b></th>
			<th class="text-center"><b>gioca</b></th>
		</tr>
	</thead>
<c:forEach items="${att}" var="x">

	 
	<tr>
	 
		<td>${x.partite}</td>
		<td>${x.squadraA}</td>
		<td>${x.squadraB}</td>
		<td>${x.quota1}</td>
		<td>${x.quotax}</td>
		<td>${x.quota2}</td>
		
	<td style = "text-align: center;">
	<div class = "row" style="margin-right:0; 	margin-left:0;">
	<c:if test="${not empty giocatore}">
	<form action="scalcio1" id=${ x.quota1 } method="get"> 
	<input form= ${ x.quota1} type="hidden" name="prova1" value=${ x.quota1}>
	<input form= ${ x.quota1 } type="hidden" name="prova1id" value=${ x.id}>
		<button form=${ x.quota1 } class="btn btn-success btn-sm" type="submit"> ${x.quota1}</button>
		</form>
			&nbsp;
		<form action="scalcio2" id=${ x.quota2} method="get"> 
		<input form= ${ x.quota2 } type="hidden" name="prova2" value=${ x.quota2}>
		<input form= ${ x.quota2 } type="hidden" name="prova2id" value=${ x.id}>
		<button form=${ x.quota2 } class="btn btn-success btn-sm" type="submit"> ${x.quota2}</button>
		</form>
		&nbsp;
			<form action="scalciox" id=${ x.quotax } method="get"> 
	<input form= ${ x.quotax } type="hidden" name="provax" value=${ x.quotax}>
		<input form= ${ x.quotax} type="hidden" name="provaxid" value=${ x.id}>
		<button form=${ x.quotax} class="btn btn-success btn-sm" type="submit"> ${x.quotax}</button>
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
<a href="risultati" style= "color:#155612"><b>Riepilogo giocata</b></a><br>
<a href="hockey"  style= "color:#155612"><b>Hockey</b></a><br>
<a href="basket"  style= "color:#155612"><b>Basket</b></a>
</div>
</div>
</div>
</div>
<br>
</body>
</html>