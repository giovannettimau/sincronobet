    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Benveniubbo
<form>
  <fieldset>
    <legend>Informazioni account:</legend>
    Email:${sessionScope.admin.getNome()} <br>
    Nome:${sessionScope.admin.getCognome()}<br>
  </fieldset>
</form>
<form:form action="cancellacsm" method="post" modelAttribute="csmdelete">
<label>email:</label>
<form:input path="email"/>
<input type="submit" />
</form:form>

<c:forEach items="${cus}" var="x">
 <% String messaggio=(String)pageContext.getAttribute("x");
 out.println("<a href="+messaggio+">polooolo</a>");%></c:forEach> 


 
</body>
</html>