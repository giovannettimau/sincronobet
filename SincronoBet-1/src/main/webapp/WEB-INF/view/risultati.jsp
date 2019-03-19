<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Riepilogo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="../CSS/style.css" rel="stylesheet" type="text/css">

</head>
<body id ="pagerisultati">
<div class="container mar-top-10" >
<div class="container p-3">
<div class="row">
<div class="col-1"></div>
<div class="col-4">
<table align="left" class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
	<tr>
			<th class="text-center"><b>squadraA</b></th>
			<th class="text-center"><b>squadraB</b></th>
			<th class="text-center"><b>quota</b></th>
			<th class="text-center"><b>scommessa</b></th>
			<th class="text-center"><b>operazione</b></th>
		</tr>
	</thead>
<c:forEach items="${sessionScope.risultati}" var="fao">

<tr>
	 
		<td>${fao.getSquadraA()}</td>
		<td>${fao.getSquadraB()}</td>
		<td>${fao.getQuota()}</td>
		<td>${fao.getRisultatoGiocato()}</td>
		

<td style = "text-align: center;">
	<div class = "row" style="margin-right:0; 	margin-left:0;">
	<c:if test="${not empty giocatore}">
		<form action="rimuovi" id=${ fao.getId()} method="post"> 
	<input form= ${ fao.getId()} type="hidden" name="indice" value=${ fao.getId()}>
			<button form=${ fao.getId() } type="submit" class="btn btn-success btn-sm"> Rimuovi</button>
		</form>
	   	</c:if>
		
</div>
	   	
		

	</td>

	</tr>
</c:forEach>



</table>
	</div>
	
	
	<div class="col-2"></div>
	<div class="col-5">
	<form>
  <fieldset class="border p-2">
    <legend>Informazioni account:</legend>
   <p align="right"> <b>Nome:</b> ${sessionScope.giocatore.getNome()} </p>
    <p align="right"><b>Email:</b> ${sessionScope.giocatore.getEmail()}</p>
    <!--  TODO: vedere se riusciamo a mettere il saldo (si trova in storico_giocate) -->
  </fieldset>
</form>
</div>
</div>
<br>
<hr color="black">
<div class="row">
<div class="col-1">	</div>
<div class="col-4">	
<div class="row">

<div class="col-4">
	 <i>Quota totale:</i></div>
<div class="col-2"></div>
<div class="col-2"> <i><fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${quota}">
	</fmt:formatNumber></i></div>
	<div class="col-4"></div>

	
	</div>
	
	
	</div>
	<div class="col-2">	</div>
		<div class="col-5">	
	<form action="simula" id=${ quota} method="get"> 
   Puntata: <input type="text" required="true" name="puntata" placeholder="&euro;"> &nbsp;
  <input form= ${ quota } type="hidden" name="quota" value=${ quota}>
			<button form=${ quota } type="submit" class="btn btn-success btn-sm">Simula</button>
			
</form>

	</div>
	</div>
	<div class="row">
	<div class="col-7"></div>
	<div class="col-4">
	 <p style="margin-inline-start:20%"><small class="form-text" style = "color: red">Inserire decimali separati dal punto</small></p></div>
	
	<div class="col-1">	</div>
	</div>
	<h4 class="text-center mar-top-10" style="font-family:cursive;color:red">
	<c:if test="${not empty possvinc}">
		<c:out value="${possvinc}"></c:out>
	</c:if></h4>
</div>
</div>

</body>
</html>