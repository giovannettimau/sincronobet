<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> -->

<title>Storico Giocate</title>
</head>
<body id = "pageprofilo" class = "img-fluid">
<br>
<br>
<br>
<br>
<div  class="container mar-top-0">

<div class="container p-3">
<table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>puntata</b></th>
			<th class="text-center"><b>vincita</b></th>
			<th class="text-center"><b>saldo</b></th>
			<th class="text-center"><b>data</b></th>

		</tr>
	</thead>
<c:forEach items="${utente}" var="x">

	 
	<tr>
	 
		<td>${x.puntata}</td>
		<td><fmt:formatNumber value="${x.vincita}" pattern="0.000"/></td>
		<td><fmt:formatNumber value="${x.saldo}" pattern="0.000"/></td>
		<td>${x.data}</td>

	<td style="text-align: center;">
	<div class = "row" style="margin-right:0; 	margin-left:0;">
	<form action="dettagli" id=${ x.storico_giocate_id } method="get"> 
		<input form= ${ x.storico_giocate_id} type="hidden" name="prova1" value=${ x.storico_giocate_id}>
		<button form=${ x.storico_giocate_id } class="btn btn-success btn-sm" type="submit" > Dettagli</button>
		</form>
		</div>
		
		
	</td>	
</tr>
</c:forEach>
</table>
<br>
<br>
<c:if test="${not empty prova }">
<table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>SquadraA</b></th>
			<th class="text-center"><b>SquadraB</b></th>
			<th class="text-center"><b>Risultato giocato</b></th>
			<th class="text-center"><b>PunteggioA</b></th>
			<th class="text-center"><b>PunteggioB</b></th>

		</tr>
	</thead>
<c:forEach items="${prova}" var="z">

	 
	<tr>
	 
		<td>${z.squadraA}</td>
		<td>${z.squadraB}</td>
		<td>${z.risultatoGiocato}</td>
		<td>${z.p1}</td>
		<td>${z.p2}</td>
</tr>
</c:forEach>
</table>
</c:if>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<form action="homepage" method="get">

 <div class="row">
 		<div class="col-10"></div>
 		<div class="col-1">
 			 <button class="btn btn-dark" class="btn btn-sm" type="submit">HOME PAGE</button>
 		</div>
 		<div class="col-1"></div>
	</div>
</form>

</body>
</html>