    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 

 
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Gestione portale</title>

<script>
function VisualizzaCampoUt(){
	document.getElementById('eliminaUtente').style.display = "block";
	document.getElementById('eliminaGiocataDaId').style.display = "none";
	//document.getElementById('visualizzaUtenti').style.display = "none";
}
function VisualizzaCampoId(){
	document.getElementById('eliminaGiocataDaId').style.display = "block";
	document.getElementById('eliminaUtente').style.display = "none";
	//document.getElementById('visualizzaUtenti').style.display = "none";
}
function VisualizzaSchermataPrincipale(){
	document.getElementById('eliminaUtente').style.display = "none";
	document.getElementById('eliminaGiocataDaId').style.display = "none";
	//document.getElementById('visualizzaUtenti').style.display = "none";
}

	var num_e=document.getElementById('emailUT').value='';
</script>

</head>
<body class = "pagesadmin">
<br>
<br>

<c:forEach items="${lista}" var="l"></c:forEach>
<c:if test="${not empty lista}">
<script>
 $(document).ready(function(){
$('#myModal').modal('show');
 }); 
</script>
</c:if>

<div class="container mar-top-10" >
<h2 class="text-center mar-top-10">Benvenuto ${sessionScope.admin.getNome()}!</h2>
<div class="container p-3">



 <div class="row">
 	
 		<div class="col-0"></div>
 		<div class="col-1">
 		<form action="homepage" method="get">
 			 <button class="btn btn-outline-warning" class="btn btn-sm" type="submit">HOME PAGE</button>
 		</form>
 		</div>
 		<div class="col-1"></div>
 		<div class="col-1">
 		<form action="logout" method="get">
 			<button class="btn btn-outline-danger" type="submit">LOGOUT</button>
 		</form>
 		</div>
 		<div class="col-9"></div>
	</div>
<br>
  <fieldset class="border p-3">
    <legend class="w-auto">Opzioni</legend>
		<div class = "row">
			<div class="col-1"></div>
			 <div  class = "col-2">
					<form action="visualizza" method="get">
				<button type="submit" class = "btn btn-success btn-primary" data-toggle="modal" data-target="#myModal">Visualizza utenti</button>
			</form>
			</div>
			<div class="col-1"></div>
			<div  class = "col-2">
				<input type="submit" class = "btn btn-success btn-primary" value = "Elimina utente" onclick = "VisualizzaCampoUt()"/>
			</div>
			<div class="col-1"></div>
			<div  class = "col-2">
				<input type="submit" class = "btn btn-success btn-primary" value = "Elimina giocate" onclick = "VisualizzaCampoId()"/>
			</div>
			<div class="col-1"></div>
			<div  class = "col-1">
				<a class = "tabellautenti" href="statistiche">Statistiche</a>
			</div>
			<div class = "col-1"></div>
		</div>
  <br>
  </fieldset>
  <div class = "row">
  <div class = "col-11"></div>
 	<div class = "col-1"><a href ="#" onclick = "VisualizzaSchermataPrincipale()" style = "color: black"><b><h5>Reset</h5></b></a></div>
  	
  </div>
   <br>
   <br>
   <br>
	<div id = "eliminaUtente" style = "display: none">
			<form:form action="cancellacsm" method="post" modelAttribute="csmdelete" class = "formclass">
				<div class = "row">
					<div class = "col-6">
						<label>Email:</label>
						<form:input type = "email" value="Inserisci email utente" onfocus="if(this.value=='inserisci email utente') this.value='';" name = "emailUT" id ="emailUT" class="form-control" path="email" placeholder = "Inserisci email utente" required="required"/>
					</div>
					<div class = "col-2"></div>
					<div class = "col-2">
						<input type="submit"  class = "btn btn-success btn-primary" value = "Elimina utente e giocate" onclick = "alert('Utente e giocate eliminati.')"/>
					</div>
					<div class = "col-2"></div>
				</div>
			</form:form>
	</div>
	
	<div id = "eliminaGiocataDaId" style = "display: none">
			<form:form action="cancellagsg" method="get" modelAttribute="csmdelete" class = "formclass">
				<div class = "row">
					<div class = "col-6">
						<label>Id utente:</label>
						<form:input type = "number" class="form-control" path="customer_id" placeholder = "Inserisci id utente" required="required"/>
					</div>
					<div class = "col-2"></div>
					<div class = "col-2">
						<input type="submit"  class = "btn btn-success btn-primary" value = "Elimina" onclick = "alert('Giocate eliminate.')"/>
					</div>
					<div class = "col-2"></div>
				</div>
			</form:form>
	</div>
 
 
 
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered" style="max-width: 600px;">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Lista Utenti</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
          <!-- Modal body -->
        <div class="modal-body">
        <table class="table-bordered table-striped" style ="margin: auto;">
	<thead class="table-light">
		<tr>
			<th class="text-center"><b>id</b></th>
			<th class="text-center"><b>nome</b></th>
			<th class="text-center"><b>cognome</b></th>
			<th class="text-center"><b>email</b></th>
			
		</tr>
	</thead>
<c:forEach items="${lista}" var="l">
	<tr>	 
		<td>${l.customer_id}</td>
		<td>${l.nome}</td>
		<td>${l.cognome}</td>
		<td>${l.email}</td>
	</tr>
</c:forEach>
</table>
        </div>

        
      </div>
    </div>
  </div>

</div>
</div>
</body>
</html>