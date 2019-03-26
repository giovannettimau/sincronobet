<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="../CSS/style.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>Statistiche</title>
</head>
<body class = "pagesadmin">

<div class="container mar-top-10">
<h2 class="text-center mar-top-10">Statistiche</h2>
	<div class="container p-3">
		
			<div class="row formclass">
				<div class="col-1"></div>
				<div class="col-md-4 block">
		            <div class="circle">
		                <p style="font-family:cursive;">Bilancio totale: <fmt:formatNumber value="${saldo}" maxFractionDigits="3"/> &euro;</p>
		            </div>
		        </div>
		        <div class="col-2"></div>
		        <div class="col-md-4 block">
		            <div class="circle">
		                <p style="font-family:cursive;">Bilancio ultimo giorno: <fmt:formatNumber value="${saldold}" maxFractionDigits="3"/> &euro;</p>
		            </div>
		        </div>
		        <div class="col-1"></div>
			</div>
			<br>
			<div class="row formclass">
				<div class="col-1"></div>
				<div class="col-md-4 block">
		            <div class="circle">
		                <p style="font-family:cursive;">Giocate totali: ${giocatetot}</p>
		            </div>
		        </div>
		        <div class="col-2"></div>
		        <div class="col-md-4 block">
		            <div class="circle">
		                <p style="font-family:cursive;">Giocate ultimo giorno: ${giocateld}</p>
		            </div>
		        </div>
		        <div class="col-1"></div>
			</div>
	</div>
</div>
</body>
</html>