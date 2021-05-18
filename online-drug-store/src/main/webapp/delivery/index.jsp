<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.classes.Delivery" %>

<% if(request.getSession().getAttribute("Logged")=="Delivery") {
	Delivery[] data = (Delivery[]) request.getSession().getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

        <title>Delivery handling</title>
        <link rel="stylesheet" type="text/css" href="../css/main.css">
        <link rel="stylesheet" type="text/css" href="../css/profile.css">   
        <link rel="stylesheet" type="text/css" href="../css/button.css">    
        <link rel="stylesheet" href="../css/signedInUser.css">  
        <link rel="stylesheet" href="../css/table.css">  
    </head>
       
    <body>
    <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <img src="../img/cart.png" height="100" width="100">
            </div>
            <div class="searchBar">
                <div></div>
                <div class="searchBarRow" style="text-align: center;align-items: center;">
                    <div style="text-align: center;">
                        <input style="height:40px;" type="text" size="150">
                    </div>
                    <div>
                        <button class="searchButton"><img src="../img/search.png" height="30" width="30"></button>
                    </div>
                </div>
            </div>
            <div style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
              
                <a href="Shippingdetails.jsp"><button class="button">Shipping</button></a>
                <br><br>
                <a href="Orderdetails.jsp" ><button class="button">Order</button></a>
                <br><br>
                <form action="../php/logout.jsp"><button type="submit" class="button">SignOut</button></form>
            </div>
        </div>
       
        <div class="main">
                <img src="../img/logo.png" height="100" width="100" class="propic">
                    <br><br>
                    <p>Delivery manager</p>
            </div> 
            
            <br><br><br><br>
        
        
                            <table id="table" border="1" width="100%">
                        <tr>
                            <td colspan="6">
                                User Detials
                            </td>
                            <td rowspan="2">
                                Action
                            </td>
                        </tr>
                        <tr>
		                    <th>Delivery Id</th>
		                    <th>Order Id</th>
		                    <th>Status</th>
		                    <th>Action</th>
                		</tr>
	           			<c:forEach items="${data}" var="delivery"> 
		           		<tr>
				    	 	<td><c:out value="${delivery.getDeliveryId()}" /></td>
				    	 	<td><c:out value="${delivery.getorderId()}" /></td>
				    	 	<td><c:out value="${delivery.getStatus()}" /></td>
				    	 	<td>
				    	 		<form action="" method="post">
				    	 			<button type = "submit" name="id" value="${delivery.getDeliveryId()}">Mark as Completed</button>
				    	 		</form>
				    	 		<form action="" method="post">
				    	 			<button type = "submit" name="id" value="${delivery.getDeliveryId()}">Delete order</button>
				    	 		</form>
				    	 	<td>
			    	 	</tr>
	    				</c:forEach>
                    </table>
        
        <div class="bottomBar">
            <div class="footer">
                <br><br>
                
                <a href="faq.jsp">FAQ</a>&nbsp;|&nbsp;
                <a href="contact.jsp">Contact Us</a>&nbsp;|&nbsp;
                <a href="privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
                <a href="help.jsp">Help</a>&nbsp;|&nbsp;
                <a href="about.jsp">About</a>
                <div>
                    <br>
                    <img src="../img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div> 
    </body>
 <%}else{ %>
 <body>
 <p>blocked</p>
 </body>
 <%} %>
</html>