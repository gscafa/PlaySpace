<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Utente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Utente user = (Utente)session.getAttribute("user");

%>
<h1><%=user.getNome()%>  <%=user.getCognome()  %></h1>
</body>
</html>