<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Eventi sportivi HOCKEY</title>
</head>
<body style = "background-image: url(http://www.strettoweb.com/wp-content/uploads/2016/11/Hockey.jpg); background-repeat: no-repeat; background-size: cover">

<table class="tablematch">
	<tr>
		<td><b>categoria</b></td>
		<td><b>squadraA</b></td>
		<td><b>squadraB</b></td>
		<td><b>quota1</b></td>
		<td><b>quota2</b></td>
		<td><b>operazione</b></td>
	</tr>
<c:forEach items="${attH}" var="z">
	
	<tr>
		<td>${z.categoria}</td>
		<td>${z.squadraA}</td>
		<td>${z.squadraB}</td>
		<td>${z.quota1}</td>
		<td>${z.quota2}</td>
		
	<td>
	
	<c:if test="${not empty giocatore}">
		<a class="b1" href="riepilogo">Scommetti</a>
		
	</c:if>
	<c:if test="${empty giocatore}">
		<a class="b1" href="loginutente">Login</a>
</c:if>

	</td>
	
	</tr>
</c:forEach>



</table>

</body>
</html>