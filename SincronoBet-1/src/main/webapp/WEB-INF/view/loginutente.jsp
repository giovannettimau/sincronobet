<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
</head>

<body>
Login
<form:form action="act" method="post" modelAttribute="personForm">
<label>email:</label>
<form:input path="email" />
<label>password:</label>
<form:input path="password" />
<c:forEach items="${cus}" var="x">
<c:out value = "${x}"/>
</c:forEach>
<input type="submit" />
</form:form>
<form:form action="provace" method="post" modelAttribute="personForm">
<label>nome:</label>
<form:input path="nome" />
<label>cognome:</label>
<form:input path="cognome" />
<label>email:</label>
<form:input path="email" />
<label>password:</label>
<form:input path="password" />
<input type="submit" />
</form:form>
<form>
  <fieldset>
    <legend>Informazioni account:</legend>
    Email:${sessionScope.giocatore.getNome()} <br>
    Nome:${sessionScope.giocatore.getCognome()}<br>
  </fieldset>
</form>
</body>
</html>