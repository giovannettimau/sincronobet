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
<title>Login admin</title>
</head>

<body class = "pagesadmin">
<div class="container mar-top-10" >
<h2 class="text-center mar-top-10">Login</h2>
<div class="container p-3">
	<form:form action="provacenoyz" method="post" modelAttribute="tenebre" class = "formclass">
	<div class="row">
		<div  class = "col-4">
			<label>Email:</label>
			<form:input class="form-control" path="email" placeholder="Inserisci Email" id="email"/>
		</div>
		<div  class = "col-4">
			<label>Password:</label>
			<form:input class="form-control" type = "password" path="password" placeholder="Inserisci Password"/>
		</div>
		<div class = "col-2"></div>
		<div  class = "col-2">
			<input type="submit"  class = "btn btn-success btn-primary" />
		</div>
		</div>
	</form:form>

</div>
<h4 class="text-center mar-top-10" style = "font-family:cursive;color:red;"><i><c:out value = "${cus }" /></i></h4>
<br><br>
</div>

</body>
</html>