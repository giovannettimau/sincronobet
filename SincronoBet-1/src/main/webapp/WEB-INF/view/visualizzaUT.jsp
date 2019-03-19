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
<title>Insert title here</title>
</head>
<body class = "pagesadmin">
<br>
<br>
<div class="container p-3" display="block">
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

</body>
</html>