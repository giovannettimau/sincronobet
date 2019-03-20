<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Login utente</title>
</head>

<body id="pageloginutente">
<div class="container mar-top-10" >
<h2 class="text-center mar-top-10">Login</h2>
<div class="container p-3">
<form:form action="act" method="post" modelAttribute="personForm" class="formclass">
<div class="row">
	<div  class = "col-4">
<label>email:</label>
<form:input type="email" class="form-control" path="email" placeholder="Inserisci Email" required="required"/>
	</div>

<div  class = "col-4">
		<label>Password:</label>

	<form:input class="form-control" type = "password" path="password" placeholder="Inserisci Password" required="required"/>
	</div>
<div class = "col-2"></div>
	<div  class = "col-2">
		<input type="submit" class = "btn btn-success btn-primary"/>
	</div>
</div>
</form:form>
<%-- <h4 class="text-center mar-top-10" style="font-family:cursive;color:red"><i><c:out value="${cus}" /></i></h4> --%>
<!-- <br><br> -->
</div>
<br>
<br>
<br>
<h2 class="text-center mar-top-10">Registrati</h2>
<div class="container p-3">
<form:form action="registrati" method="post" modelAttribute="personForm" class = "formclass">
		<div class="row">
			<div  class = "col-4">
				<label>Nome:</label>
				<form:input type="text" class="form-control" path="nome" pattern="[A-Za-z\s]*" placeholder="Inserisci Nome" required="required"/>
			</div>
			<div  class = "col-4">
				<label>Cognome:</label>
				<form:input type="text" class="form-control" path="cognome" pattern="[A-Za-z\s]*" placeholder="Inserisci Cognome" required="required"/>
			</div>
			<div class = "col-4"></div>
		</div>
		<br><br>
		<div class="row">
			<div  class = "col-4">
				<label>Email:</label>
				<form:input type="email" class="form-control" path="email" placeholder="Inserisci Email" required="required"/>
			</div>
			<div  class = "col-4">
				<label>Password:</label>
				<form:input class="form-control" type = "password" path="password" placeholder="Inserisci Password" required="required"/>
			</div>
			<div  class = "col-2"></div>
			<div  class = "col-2">
				<input type="submit" class = "btn btn-success btn-primary"/>
			</div>
		</div>
			<br><br>
			<div class="row">
				<div  class = "col-5">
					<label>Età:</label>
					<input class="form-control" type="number" min="18" placeholder="Inserisci l'ètà" required="required"/>
					<small class="form-text" style = "color: red">Attenzione: registrazione consentita solo ai maggiorenni (>18)</small>
				</div>
				<div  class = "col-7"></div>
			</div>
</form:form>
<h4 class="text-center mar-top-10" style="font-family:cursive;color:black"><i><a href="index"><c:out value="${registrazione}" /></a></i></h4>
<br><br>
</div>
<br>
<br>
<br>
</div>
</body>
</html>