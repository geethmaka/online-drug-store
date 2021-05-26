<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.classes.OrderDetails" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <title>Customer Account</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/signedInUser.css">   
    <link rel="stylesheet" type="text/css" href="../css/customer.css">
    <link rel="stylesheet" type="text/css" href="../css/table.css">  
</head>
<body>
    <div class="topBar">
        <div class="logo">
            <a href="../index.jsp"><img src="../img/cart.png" height="100" width="100"></a>
        </div>
        <div class="searchBar">
            <div></div>
            <div class="searchBarRow">
                <div style="text-align: center;">
                    <input style="height:40px;" type="text" size="150">
                </div>
                <div>
                    <button class="searchButton"><img src="../img/search.png" height="30" width="30"></button>
                </div>
            </div>
        </div>
        <div class="welcome">
            <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
            <span id="username">${Customer.getFirstName()}</span><br><br>
            <form action="../logout" method="post"><button type="submit" class="btn">SignOut</button></form>
        </div>
    </div>
    <div class="main">
        <div class="covermain">
        	<br><br>
            <img src="../img/logo.png" height="100" width="100" class="propic">
            <div class="right">
                <button class="btn"><a href="edit_cAccount.jsp">Edit account</a></button>
            </div>
            <div>
            	<p id="username">${Customer.getFirstName()}</p>
	            <p>${Customer.getEmail()}</p>
            </div>
        </div><br>
       	<table class="table" border ="1">
			<tr>
           		<th><b>Order Number</b></th>
               	<th><b>Item Name</b></th>
             	<th><b>Quantity</b></td>
               	<th><b>Amount</b></td>
               	<th><b>Order Status</b></td>
           	</tr>
			<c:forEach items="${orderDetials}" var="Item"> 
     		<tr>
     			<td><c:out value="${Item.getOrderID()}"/></td>
     			<td><c:out value="${Item.getName()}" /></td>
  				<td><c:out value="${Item.getQuantity()}" /></td>
   				<td><c:out value="${Item.getTotal()}" /></td>
   				<td><c:out value="${Item.getStatus()}" /></td>
			</tr>
			</c:forEach>
		</table>
	</div>
    <div class="bottomBar">
        <div class="footer">
            <br><br>
            <a href="report.jsp">Report</a>&nbsp;|&nbsp;
            <a href="/faq.jsp">FAQ</a>&nbsp;|&nbsp;
            <a href="contact.jsp">Contact Us</a>&nbsp;|&nbsp;
            <a href="privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
            <a href="help.jsp">Help</a>&nbsp;|&nbsp;
            <a href="abput.jsp">About</a>
            <div>
                <br>
                <img src="../img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="../img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div> 
</body>
</html>