<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<%
		int value = (Integer)request.getAttribute("sum");
	%>
	<h1>Value is = <%=value %></h1>
</body>
</html> 