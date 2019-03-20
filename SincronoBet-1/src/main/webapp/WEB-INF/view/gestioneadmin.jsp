    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

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

<div class="container mar-top-10" >
<h2 class="text-center mar-top-10">Benvenuto ${sessionScope.admin.getNome()}!</h2>
<div class="container p-3">
  <fieldset class="border p-2">
    <legend class="w-auto">Opzioni</legend>
		<div class = "row">
			<div class = "col-1"></div>
			 <div  class = "col-2">
				<!-- <input type="submit" class = "btn btn-success btn-primary" value = "Visualizza utenti" onclick = "VisualizzaUt()"/> -->
				<a class = "tabellautenti" href="visualizzaUT">Visualizza utenti</a>
			</div>
			<div class="col-2"></div>
			<div  class = "col-2">
				<input type="submit" class = "btn btn-success btn-primary" value = "Elimina utente" onclick = "VisualizzaCampoUt()"/>
			</div>
			<div class = "col-2"></div>
			<div  class = "col-2">
				<input type="submit" class = "btn btn-success btn-primary" value = "Elimina giocate" onclick = "VisualizzaCampoId()"/>
			</div>
			<div class = "col-1"></div>
		</div>
  <br>
  </fieldset>
  <div class = "row">
  <div class = "col-11"></div>
 	<div class = "col-1"><a href ="#" onclick = "VisualizzaSchermataPrincipale()" style = "color: black"><b><h5>Reset</h5></b></a></div>
  	<!--  <div class = "col-9"></div>
  	<div class = "col-2 text-right"><a href ="visualizzaUT" style = "color: #006699"><h5><b>Lista Utenti</b></h5></a></div>
  	-->
  </div>
   <br>
   <br>
   <br>
	<div id = "eliminaUtente" style = "display: none">
			<form:form action="cancellacsm" method="post" modelAttribute="csmdelete" class = "formclass">
				<div class = "row">
					<div class = "col-6">
						<label>Email:</label>
						<form:input type = "email" name = "emailUT" id ="emailUT" class="form-control" path="email" placeholder = "Inserisci email utente" required="required"/>
					</div>
					<div class = "col-2"></div>
					<div class = "col-2">
						<input type="submit"  class = "btn btn-success btn-primary" value = "Elimina utente e giocate" onclick = "alert('Utente e giocate eliminati.')"/>
					</div>
					<div class = "col-2"></div>
				</div>
			</form:form>
	</div>
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
 
	<div id = "visualizzaUtenti" style = "display: none">
			<form:form action="visualizza" method="get" class = "formclass" modelAttribute="csmdelete">
			<div class = "row">
				<input type="submit"  class = "btn btn-success btn-primary" value = "Visualizza"/>
			</div>	
				<table class="table-bordered table-striped" style ="margin: auto;">
					<thead class="table-light">
					     <tr>
							<th class="text-center"><b>Id</b></th>
							<th class="text-center"><b>Nome</b></th>
							<th class="text-center"><b>Cognome</b></th>
							<th class="text-center"><b>Email</b></th>			
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
			</form:form>
	</div>

</div>

</body>
</html>