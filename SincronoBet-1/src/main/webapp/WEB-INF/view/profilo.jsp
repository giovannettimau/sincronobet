<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
    .fieldset-auto-width {
         display: inline-block;
    }
</style>

<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>Storico Giocate</title>
</head>
<body id = "pageprofilo">
<br>

<c:if test="${not empty prova }">
<script>
  $(document).ready(function(){
	  $('#myModal').modal('show');
  }); 
</script>
<c:forEach items="${prova}" var="z">
</c:forEach>
</c:if>

<div  class="container mar-top-0">
<h1 class="text-center mar-top-10" style="color:white">Profilo ${sessionScope.giocatore.getNome()}</h1>
<div class="container p-3">
<br>
<br>
<fieldset class="border p-3">
    <legend class="w-auto" style="color:white">Opzioni</legend>
		<div class = "row">
			<div class="col-2">  </div>
 
  			<div class="col-2">
			<button class="btn btn-success" data-toggle="modal" data-target="#myModalHorizontal">Contatta Admin</button></div>
 			
 			
 			<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     					aria-labelledby="myModalLabel" aria-hidden="true">
    		<div class="modal-dialog">
        	<div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">               
                <h4 class="modal-title" id="myModalLabel">Contatta Amministratore</h4>               
            </div>           
            <!-- Modal Body -->
            <div class="modal-body">               
                <form class="form-horizontal" role="form" action="contattaadmin" method="post">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label" for="inputEmail3">Email</label>                              
                    <div class="col-sm-10">
                        <input name="newmail" type="email" class="form-control" 
                        id="inputEmail3" placeholder="jackfulljack@gmail.com"/>
                    </div>
                    <label  class="col-sm-2 control-label" for="inputMessage">Messaggio</label>
                    <div class="col-sm-10">
                        <input name="messaggioadmin" type="text" class="form-control" 
                        id="inputMessage" placeholder="Messaggio per amministratore"/>
                    </div>
                  </div>                                   
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Contatta</button>
                    </div>
                  </div>
                </form>                 
            </div>            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>                                        
            </div>
        </div>
    </div>
</div>
 			<div class="col-1"></div>
  
  		<form action="tornarisultati" method="get">

 			
 			<div class="col-2">
 			 	<button class="btn btn-dark" class="btn btn-sm" type="submit">SCOMMESSA IN CORSO</button>
 			</div>
 		
	
		</form>
			<div class="col-1"></div>
	<form action="homepage" method="get">

 
 		
 		<div class="col-2">
 			 <button class="btn btn-dark" class="btn btn-sm" type="submit">HOME PAGE</button>
 		</div>
 		
	
</form>
<div class="col-2"></div>
</div>
</fieldset>

<br>
<br>
<div class="row justify-content-center">
	<div class="col-auto">
	<table class="table table-striped table-responsive">
		<thead class="table-light">
		
		 <tr>
			<th><b>puntata</b></th>
			<th><b>vincita</b></th>
			<th><b>saldo</b></th>
			<th><b>data</b></th>
			<th><b>operazione</b></th>
			
		</tr>
	</thead>
<c:forEach items="${utente}" var="x">

	 
	<tr>
	 
		<td>${x.puntata}</td>
		<td><fmt:formatNumber value="${x.vincita}" pattern="0.000"/></td>
		<td><fmt:formatNumber value="${x.saldo}" pattern="0.000"/></td>
		<td>${x.data}</td>

	<td style="text-align: center;">
	<div class = "row" style="margin-right:0; 	margin-left:0;">
		<form action="dettagli" id=${ x.storico_giocate_id } method="get"> 
			<input form= ${ x.storico_giocate_id} type="hidden" name="prova1" value=${ x.storico_giocate_id}>
		<button form=${ x.storico_giocate_id }  class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal" type="submit" > Dettagli</button>
		</form>
		</div>

	</td>	
</tr>
</c:forEach>
</table>
</div>
</div>


<!-- The Modal -->
  
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Dettagli giocate</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
          <!-- Modal body -->
        <div class="modal-body">
        <table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>SquadraA</b></th>
			<th class="text-center"><b>SquadraB</b></th>
			<th class="text-center"><b>Risultato giocato</b></th>
			<th class="text-center"><b>PunteggioA</b></th>
			<th class="text-center"><b>PunteggioB</b></th>

		</tr>
	</thead>
	
	<c:forEach items="${prova}" var="z">

	 
	<tr>
	 
		<td>${z.squadraA}</td>
		<td>${z.squadraB}</td>
		<td>${z.risultatoGiocato}</td>
		<td>${z.p1}</td>
		<td>${z.p2}</td>
</tr>
</c:forEach>
</table>
        </div>

        
      </div>
    </div>
  </div>

<br>
<div class="raw">
<div class="col-2"></div>
<div class="col-2"> <c:if test="${empty prova}">


<fieldset class="border p-2 fieldset-auto-width" style="background-color:white;opacity:0.8;">

	<legend></legend>
	
	<h5 style="color:black"><b>Saldo attuale:</b></h5>
	<p style="color:black"><b><fmt:formatNumber value="${saldo}" pattern="0.000"/>&nbsp; &euro;</b></p>
   
  </fieldset>  
  </c:if>
  </div>
  <div class="col-8"></div>
</div>

</div>
</div>


<%
		session.removeAttribute("prova");
%>
</body>
</html>