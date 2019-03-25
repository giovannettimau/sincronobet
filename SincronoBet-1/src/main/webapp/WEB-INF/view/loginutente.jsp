<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../IMG/trophy-football-camp-icon.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
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
<h4 class="text-center mar-top-10" style="font-family:cursive;color:red"><i><c:out value="${cus}" /></i></h4>
<br><br>
</div>

<div class="row">
	    <div class="col-1"></div>
 		<div class="col-1">
			<button class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModalHorizontal">Reset password</button></div>
    <div class="col-10"></div>
	</div>
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">               
                <h4 class="modal-title" id="myModalLabel">Reset your password</h4>               
            </div>           
            <!-- Modal Body -->
            <div class="modal-body">               
                <form class="form-horizontal" role="form" action="reset" method="post">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label" for="inputEmail3">Email</label>                              
                    <div class="col-sm-10">
                        <input name="newmail" type="email" class="form-control" 
                        id="inputEmail3" placeholder="Email"/>
                    </div>
                  </div>                                   
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Generate new password</button>
                    </div>
                  </div>
                </form>                 
            </div>            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                                        
            </div>
        </div>
    </div>
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