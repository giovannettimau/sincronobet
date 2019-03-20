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
<title>Homepage</title>
</head>
<body id="pageindex">
<div class="container mar-top-0">
<br>
<c:if test="${empty giocatore}">
	<c:if test="${empty admin }">
		<p align="right"><a href="loginutente" style="color: limegreen">Login Utente</a>
	</c:if>
</c:if>


<c:if test="${not empty giocatore}">
<form style="color:limegreen;">

<td>Welcome &nbsp; ${sessionScope.giocatore.getNome()}</td>
<p align ="right"><a href="profilo" Style="color: limegreen">Storico</a>
</form>
</c:if>
<c:if test="${empty admin }">
	<c:if test="${empty giocatore }">
	
	 &nbsp&nbsp<a href="loginadmin" style="color: limegreen">Login Admin</a>
	
</c:if>
</c:if>
<c:if test="${empty admin }">
	<c:if test="${not empty giocatore }">
	<div style="display:none;">
		 &nbsp&nbsp<a href="loginadmin" style="color: limegreen">Login Admin</a>
	</div>
</c:if>
</c:if>
<c:if test="${not empty admin }">
<form style="color:limegreen;">

<td>Admin:  ${sessionScope.admin.getNome()}</td>
</form>
</c:if>
	</p>
	
<c:if test="${not empty giocatore}">
		
	
			
				
			
	<form action="logout" method="get">

 		<div class="row">
 				<div class="col-0"></div>
 				<div class="col-1">
 					<button  class="btn btn-outline-danger" type="submit">LOGOUT</button>
 		</div>
 		<div class="col-12"></div>
		</div>
</form>
</c:if>
<c:if test="${not empty admin}">
		
	
			
				
			
	<form action="logout" method="get">

 		<div class="row">
 				<div class="col-0"></div>
 				<div class="col-1">
 					<button  class="btn btn-outline-danger" type="submit">LOGOUT</button>
 		</div>
 		<div class="col-12"></div>
		</div>
</form>
</c:if>

<br>
<br>
<h1 class="text-center mar-top-0" ><strong><font style="font-family: Georgia; color: white; font-size: 70px;">SINCRONO BET</font></strong></h1>
<h2 class="text-center mar-top-0" ><font color="white">Benvenuto nella home page del portale di scommesse</font></h2>

<!-- <h1 align="center" ><strong><font style="font-family: Georgia; color: white; font-size: 70px;"> SINCRONO BET </font></strong> </h1> -->
<!-- <h2 align="center"><font color="white"> Benvenuto nella home page del portale di scommesse</font></h2> -->
<br>
<br>
<br>
<br>
<br>
<hr color="white">
<br>
<br>
<br>
<nav class="navbar navbar-default">
	<div class="container-fluid" style = "width: 50%;">
		<ul class="nav navbar-nav" style = "-webkit-box-orient: horizontal; flex-direction: row;">
		  <li><a class="active" href="calcio">CALCIO</a></li>
		  <li><a class="active" href="basket">BASKET</a></li>
		  <li><a class="active" href="hockey">HOCKEY</a></li>
		</ul>
	</div>
</nav>
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
<br>
<div class="container p-3">
    <div class="row">
        <div class="col-6">
            <img src="http://atlanticabingo.it/wp-content/uploads/2018/02/footer.png" style = "width:100%">
        </div>
        <div class="col-1"></div>
        <div class="col-5" style="color: white; text-align:center;"><!-- DECIDERE MORTE/VITA DEL br -->
            <br>Informati sulle probabilità di vincita e sul regolamento di gioco sul sito <a class="link_basso" href="http://www.adm.gov.it">www.adm.gov.it</a>
        </div>
    </div>
</div>

<!-- <img src="http://atlanticabingo.it/wp-content/uploads/2018/02/footer.png" style="width: 40%" align=left>  -->
<!-- <br><br><p style="text-align:right; color: white">Informati sulle probabilità di vincita e sul regolamento di gioco sul sito <a class="link_basso" href="http://www.adm.gov.it">www.adm.gov.it</a> -->

</body>
</html>