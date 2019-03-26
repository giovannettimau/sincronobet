<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">


<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<body id="pageindex">
<div class="container mar-top-0">
<br>
<br>
<br>
<c:if test="${empty giocatore}">
	<c:if test="${empty admin }">
		<p align="right"><a href="loginutente" style="color: limegreen"><b>Login Utente</b></a>
	</c:if>
</c:if>


<c:if test="${not empty giocatore}">
<div class="btn btn-static btn-lg welcome">
	<form style="color:white;font-family:cursive;">
		<td>Welcome  ${sessionScope.giocatore.getNome()}</td>&nbsp;&nbsp;<img src="../IMG/user-android-icon-48x48.png"	alt="AvatarUser" style="border-radius: 50%;">
<p align ="left"><a href="profilo" Style="color: black">Storico</a>
</form>
</div>
<br>
</c:if>
<c:if test="${empty admin }">
	<c:if test="${empty giocatore }">
	
	 &nbsp&nbsp<a href="loginadmin" style="color: limegreen"><b>Login Admin</b></a>
	
</c:if>
</c:if>
<c:if test="${empty admin }">
	<c:if test="${not empty giocatore }">
	<div style="display:none;">
		 &nbsp&nbsp<a href="loginadmin" style="color: limegreen">Login Admin</a>
	</div>
</c:if>
<br>
</c:if>
<c:if test="${not empty admin }">
<div>
	<form action="gestione" style="color:white;font-family:cursive;">
		<button class="btn btn-lg welcome" type="submit"><td>Admin  ${sessionScope.admin.getNome()}</td>&nbsp;&nbsp;<img src="../IMG/android-icon-48x48.png"	alt="AvatarAdmin" style="border-radius: 50%;">
<!--     <p align ="left"><a href="gestione" Style="color: black">Gestione</a> -->
    	</button>
    </form>
</div>
<br>
</c:if>

<c:if test="${not empty giocatore}">
		
	
			
				
			
	<form action="logout" method="get">

 		<div class="row">
 				<div class="col-0"></div>
 				<div class="col-1">
 					<button  class="btn btn-outline-danger bottonelogout"  type="submit">LOGOUT</button>
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
 					<button  class="btn btn-outline-danger bottonelogout" type="submit">LOGOUT</button>
 		</div>
 		<div class="col-12"></div>
		</div>
</form>
</c:if>

<br>
<br>
<h1 class="text-center mar-top-0 shadow" ><strong><font style="font-family: Georgia; color: white; font-size: 70px;">SINCRONO BET</font></strong></h1>
<h2 class="text-center mar-top-0 shadow1" ><font color="white">Benvenuto nella home page del portale di scommesse</font></h2>

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

</div>
</body>
</html>