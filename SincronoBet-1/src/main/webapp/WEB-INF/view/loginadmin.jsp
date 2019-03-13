
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
<form:form action="provacenoyz" method="post" modelAttribute="tenebre">
<label>email:</label>
<form:input path="email" />
<label>password:</label>
<form:input path="password" />
<input type="submit" />
</form:form>
<c:out value = "${cus}"/>

</body>
</html>