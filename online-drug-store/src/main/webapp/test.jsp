<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@page import="java.util.Arrays"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="dbcon" method="post">
	<input type="submit"/>
	</form>
	    <c:forEach items="${value}" var="country"> 
	    	 <c:out value="${country.getEmail()}" />
    	</c:forEach>
</body>
</html>
<!-- uri="http://java.sun.com/jsp/jstl/core"  -->