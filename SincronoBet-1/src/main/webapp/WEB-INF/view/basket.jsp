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
	
	<c:if test="${not empty utente}">
		<a class="b1" href="riepilogo">Scommetti</a>
		
	</c:if>
	<c:if test="${empty utente}">
		<a class="b1" href="loginutente">Login</a>
</c:if>
	</td>
	
	</tr>
</c:forEach>



</table>


</body>
</html>