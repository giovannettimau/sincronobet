<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Eventi sportivi CALCIO</title>
</head>
<body style = "background-image: url(https://www.capebretonpost.com/media/photologue/photos/cache/soccer-thinkstock-copy_large.jpg); background-repeat: no-repeat; background-size: cover">
<!-- body style = "background-image: url(https://i.pinimg.com/originals/83/f2/88/83f2883149edce89779ee4090b940870.jpg); background-repeat: no-repeat; background-size: cover" -->


<table class="tablematch">
	<tr>
		<td><b>partite</b></td>
		<td><b>squadraA</b></td>
		<td><b>squadraB</b></td>
		<td><b>quota1</b></td>
		<td><b>quotaX</b></td>
		<td><b>quota2</b></td>
		<td><b>operazione</b></td>
	</tr>
<c:forEach items="${att}" var="x">

	 
	<tr>
	 
		<td>${x.partite}</td>
		<td>${x.squadraA}</td>
		<td>${x.squadraB}</td>
		<td>${x.quota1}</td>
		<td>${x.quotax}</td>
		<td>${x.quota2}</td>
		
	<td>
	
	<c:if test="${not empty giocatore}">
	<form action="scalcio1" id=${ x.quota1 } method="get"> 
	<input form= ${ x.quota1} type="hidden" name="prova1" value=${ x.quota1}>
	<input form= ${ x.quota1 } type="hidden" name="prova1id" value=${ x.id}>
		<button form=${ x.quota1 } type="submit" > ${x.quota1}</button>
		</form>
		<form action="scalcio2" id=${ x.quota2} method="get"> 
		<input form= ${ x.quota2 } type="hidden" name="prova2" value=${ x.quota2}>
		<input form= ${ x.quota2 } type="hidden" name="prova2id" value=${ x.id}>
		<button form=${ x.quota2 } type="submit" > ${x.quota2}</button>
		</form>
			<form action="scalciox" id=${ x.quotax } method="get"> 
	<input form= ${ x.quotax } type="hidden" name="provax" value=${ x.quotax}>
		<input form= ${ x.quotax} type="hidden" name="provaxid" value=${ x.id}>
		<button form=${ x.quotax} type="submit" > ${x.quotax}</button>
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
<a href="basket">Basket</a>
</table>
</body>
</html>