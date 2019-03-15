<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Eventi sportivi BASKET</title>

</head>
<body style="background-image: url(https://www.von.gov.ng/wp-content/uploads/2018/03/basketball.jpg); background-repeat: no-repeat; background-size: cover" >


<table class="tablematch">
	<tr>
		<td><b>categoria</b></td>
		<td><b>squadraA</b></td>
		<td><b>squadraB</b></td>
		<td><b>quota1</b></td>
		<td><b>quota2</b></td>
		<td><b>operazione</b></td>
	</tr>
<c:forEach items="${attB}" var="y">
	
	<tr>
		<td>${y.categoria}</td>
		<td>${y.squadraA}</td>
		<td>${y.squadraB}</td>
		<td>${y.quota1}</td>
		<td>${y.quota2}</td>
		
	
	
	
	
	<td>
	
		<c:if test="${not empty giocatore}">
	<form action="sbasket1" id=${ y.quota1 } method="get"> 
	<input form= ${ y.quota1} type="hidden" name="prova1" value=${ y.quota1}>
	<input form= ${ y.quota1 } type="hidden" name="prova1id" value=${ y.id}>
		<button form=${ y.quota1 } type="submit" > ${y.quota1}</button>
		</form>
		<form action="sbasket2" id=${ y.quota2} method="get"> 
		<input form= ${ y.quota2 } type="hidden" name="prova2" value=${ y.quota2}>
		<input form= ${ y.quota2 } type="hidden" name="prova2id" value=${ y.id}>
		<button form=${ y.quota2 } type="submit" > ${y.quota2}</button>
		</form>
	</c:if>
	<c:if test="${empty giocatore}">
		<a class="b1" href="loginutente">Login</a>
	   	
		
	</c:if>

	</td>
	
	</tr>
	
	
</c:forEach>
<a href="risultati">Riepilogo giocata</a>
<a href="hockey">Hockey</a>
<a href="calcio">calcio</a>
	</tr>




</table>


</body>
</html>