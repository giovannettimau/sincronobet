<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">


<style type "text/css">

.blink {
	-webkit-animation: blink .75s linear infinite;
	-moz-animation: blink .75s linear infinite;
	-ms-animation: blink .75s linear infinite;
	-o-animation: blink .75s linear infinite;
	 animation: blink .75s linear infinite;
}
@-webkit-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-moz-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-ms-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-o-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}

</style>



<meta charset="ISO-8859-1">
<title>Riepilogo</title>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">

</head>
<body id ="pagerisultati">
<div class="container mar-top-10" >
<div class="container p-3">
<div class="row">
<div class="col-1"></div>
<div class="col-4">
<c:if test="${not empty risultati }">
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
		<form action="rimuovi" id=${ fao.getId()} method="get"> 
	<input form= ${ fao.getId()} type="hidden" name="indice" value=${ fao.getId()}>
			<button form=${ fao.getId() } type="submit" class="btn btn-success btn-sm"> Rimuovi</button>
		</form>
	   	</c:if>
		
</div>
	   	
		

	</td>

	</tr>
</c:forEach>



</table>
</c:if>
	</div>
	
	
	<div class="col-2"></div>
	<div class="col-5">
	<form>
  <fieldset class="border p-2">
    <legend><i>Informazioni account:</i></legend>
   <p> <b>Nome:</b> ${sessionScope.giocatore.getNome()} 
   		<br>
    <b>Email:</b> ${sessionScope.giocatore.getEmail()}</p>
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
	</fmt:formatNumber></i>&euro;</div>
	<div class="col-4"></div>

	
	</div>
	
	
	</div>
	<div class="col-2">	</div>
	
		<c:if test="${not empty quota}">
		
		<div class="col-5">	
	<form action="simula" id=${ quota} method="get"> 
   Puntata: <input type="text" required="true" pattern="^[^-][0-9.]*" name="puntata" placeholder="&euro;"> &nbsp;
  	<c:if test="${not empty risultati}">
  		<input form= ${ quota } type="hidden" name="quota" value=${ quota}>
  	</c:if>
			<button form=${ quota } type="submit" class="btn btn-success btn-sm">Simula</button>
			
</form>

	</div>
	</c:if>
	</div>
	
	<c:if test="${not empty quota}">
	
	<div class="row">
	<div class="col-7"></div>
	<div class="col-4">
	 <p style="margin-inline-start:20%"><small class="form-text" style = "color: red">Inserire decimali separati dal punto</small></p></div>
	
	<div class="col-1">	</div>
	</div>
	</c:if>
	<h4 class="text-center mar-top-10" style="font-family:cursive;color:black">
	<c:if test="${not empty possvinc}">
		Possibile vincita: <c:out value="${possvinc}"></c:out>&nbsp; &euro;
	</c:if></h4>


<br>
<br>
<c:if test="${not empty quota}">
<div class="row">
<div class="col-7"></div>
<div class="col-5">
<form action="gioca" method="get"> 
   Puntata: <input type="text" required="true" pattern="^[^-][0-9.]*" name="puntata" placeholder="&euro;"> &nbsp;
			<button class="btn btn-success btn-sm" type="submit" >Gioca</button>
			
</form>
<!-- <div class="col-1"></div> -->
</div>
</div>
</c:if>
<c:if test="${not empty quota}">
<div class="row">
	<div class="col-7"></div>
	<div class="col-4">
	 <p style="margin-inline-start:20%"><small class="form-text" style = "color: red">Inserire decimali separati dal punto</small></p></div>
	
	<div class="col-1">	</div>
	</div>
	</c:if>
<br>
<br>
<div class="row">
<div class="col-2"></div>
<div class="col-8">

	<h5 class="text-center" style="color:black;font-family:cursive;">
   		<c:if test="${not empty vincita}">
   			<c:if test="${not empty perditaperdita}">
				<p class="tab blink ombraper" style="color:red;"><c:out value="${msg}"></c:out></p>
				<c:out value="${vincita}"></c:out> &nbsp; &euro;
				<br>
			    <br>
			    	<div class="row">
			    		<div class="col-3"></div>
			    		<div class="col-6 text-center">			    					    					    					    		
			    		</div>
			    		<div class="col-3"></div>
			    	
			    	
			    	</div>
			  </c:if>
			  	<c:if test="${not empty vittoriavittoria}">
				<p class="tab blink ombravin" style="color:limegreen;"><c:out value="${msg}"></c:out></p>
				<c:out value="${vincita}"></c:out> &nbsp; &euro;
				<br>
			    <br>
			    	<div class="row">
			    		<div class="col-3"></div>
			    		<div class="col-6 text-center">			    					    			    					    		
			    		</div>
			    		<div class="col-3"></div>
			    	
			    	
			    	</div>
			  </c:if>
			    
			   			    			    			    
			<form action="giocadinuovo" method="get">
				<button class="btn btn-outline-warning" class="btn btn-small" type="submit">Scommetti ancora</button>
			</form>
		</c:if>
 	</h5>
</div>	
<div class="col-2"></div>
</div>
<br>
<br>
<form action="profilo" method="get">

 <div class="row">
 		<div class="col-1"></div>
 		<div class="col-1">
 			<button class="btn btn-dark" type="submit">PROFILO</button>
 		</div>
 		<div class="col-10"></div>
	</div>
	</form>
	
<br>
<br>
<br>

<form action="logout" method="get">

 <div class="row">
 		<div class="col-10"></div>
 		<div class="col-1">
 			<button class="btn btn-outline-danger" type="submit">LOGOUT</button>
 		</div>
 		<div class="col-1"></div>
	</div>
</form>
</div>
</div>
</body>
</html>