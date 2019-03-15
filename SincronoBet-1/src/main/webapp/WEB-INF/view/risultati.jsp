<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Eventi sportivi CALCIO</title>
</head>
<body style = "background-image: url(https://c.s-microsoft.com/it-it/CMSImages/Windows_Homepage_Icon_Devices_1920.jpg?version=b01ff670-fdb4-8e12-9745-5efcdc0fa3d8); background-repeat: no-repeat; background-size: cover">
<!-- body style = "background-image: url(https://i.pinimg.com/originals/83/f2/88/83f2883149edce89779ee4090b940870.jpg); background-repeat: no-repeat; background-size: cover" -->

<table class="tablematch">
<c:forEach items="${sessionScope.risultati}" var="fao">

<tr>
	 
		<td>${fao.getSquadraA()}</td>
		<td>${fao.getSquadraB()}</td>
		<td>${fao.getQuota()}</td>
		<td>${fao.getRisultatoGiocato()}</td>
		
	<td>

	<c:if test="${not empty giocatore}">
		<form action="rimuovi" id=${ fao.getId()} method="post"> 
	<input form= ${ fao.getId()} type="hidden" name="indice" value=${ fao.getId()}>
			<button form=${ fao.getId() } type="submit" > Rimuovi</button>
		</form>
	   	
		
	</c:if>

	</td>
	
	</tr>
	
	
	</c:forEach>	
	
	</table>
	<form>
	<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${quota}">
	</fmt:formatNumber>
	</form>
	<form>
  <fieldset>
    <legend>Informazioni account:</legend>
    Email:${sessionScope.giocatore.getNome()} <br>
    Nome:${sessionScope.giocatore.getCognome()}<br>
  </fieldset>
</form>
<form action="simula" id=${ quota} method="get"> 
   Puntata: <input type="text" required="true" name="puntata"><br>
  <input form= ${ quota } type="hidden" name="quota" value=${ quota}>
			<button form=${ quota } type="submit" > simula</button>
			
</form>
<c:if test="${not empty possvinc}">
		<c:out value="${possvinc}"></c:out>
	</c:if>
		

</body>
</html>