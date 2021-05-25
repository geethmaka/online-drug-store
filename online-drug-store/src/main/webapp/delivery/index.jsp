<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "com.classes.Delivery" %>
<%@ page import = "com.classes.Item" %>

<% if(request.getSession().getAttribute("Logged")=="Delivery") {
	Delivery[] data = (Delivery[]) request.getSession().getAttribute("data");
	Item[] items = (Item[]) request.getSession().getAttribute("items");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

        <title>Delivery handling</title>
        <link rel="stylesheet" type="text/css" href="../css/main.css">
        <link rel="stylesheet" type="text/css" href="../css/profile.css">     
        <link rel="stylesheet" href="../css/signedInUser.css">  
        <link rel="stylesheet" href="../css/table.css">  
        <link rel="stylesheet" type="text/css" href="../css/forms.css">
    </head>
       
    <body>
    <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <img src="../img/cart.png" height="100" width="100">
            </div>
            <div class="searchBar">
                <div></div>
                <div class="searchBarRow" style="text-align: center;align-items: center;">
                	<h1>Delivery Manager</h1>
                </div>
            </div>
            <div style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
            <br><br>
                <form action="../logout"><button type="submit" class="button">SignOut</button></form>
            </div>
        </div>
       
        <div class="main">
            
            <br><br><br><br>
                        <table id="table" border="1" width="100%">
                        <tr>
		                    <th>Delivery Id</th>
		                    <th>Order Id</th>
		                    <th>Item Id</th>
		                    <th>Customer Name</th>
		                    <th>Quantity</th>
		                    <th>Location</th>
		                    <th>Status</th>
		                    <th>Action</th>
                		</tr>
	           			<c:forEach items="${data}" var="delivery"> 
		           		<tr>
				    	 	<td><c:out value="${delivery.getDeliveryId()}" /></td>
				    	 	<td><c:out value="${delivery.getorderId()}" /></td>
				    	 	<td><c:out value="${delivery.getItemId()}" /></td>
				    	 	<td><c:out value="${delivery.getFname()}" /></td>
				    	 	<td><c:out value="${delivery.getQuantity()}" /></td>
				    	 	<td><c:out value="${delivery.getLocation()}" /></td>
				    	 	<form action="updatedelivery" method="post">
				    	 	<td>
				    	 		<select name="status">
				    	 			<option value="<c:out value="${delivery.getStatus()}" />" selected><c:out value="${delivery.getStatus()}" /></option>
				    	 			<c:if test = "${delivery.getStatus()=='pending'}">
				    	 				<option value="shipped">shipped</option>
				    	 			</c:if>
				    	 		</select>
				    	 	</td>
				    	 	<td>
				    	 			<button type = "submit" name="id" value="${delivery.getDeliveryId()}">Update</button>
				    	 		</form>
				    	 		<form action="deletedelivery" method="post">
				    	 			<button type = "submit" name="id" value="${delivery.getDeliveryId()}">Delete order</button>
				    	 		</form>
				    	 	<td>
			    	 	</tr>
	    				</c:forEach>
                    </table>
                    <br><br>
                    <div>
                                <table class="table" border ="1">
                <tr>
                	<th><b>Product ID</b></th>
                    <th><b>Product Name</b></th>
                    <th><b>Quantity</b></td> 
                    <th><b>Unit Price</b></td>  
                </tr>
                <c:forEach items="${items}" var="Item"> 
		        	<tr>
		        		<td><input type="text" name="productname" value="<c:out value="${Item.getItemID()}"/>" readonly></td>
		        		<td><input type="text" name="productname" value="<c:out value="${Item.getName()}" />"></td>
				   		<td><input type="number" name="productquantity" value="<c:out value="${Item.getQuantity()}" />"></td>
				    	<td><input type="number" name="productprice" value="<c:out value="${Item.getUnitPrice()}" />"></td>
			    	 </tr>
	    		</c:forEach>
            </table>
                    </div>
                    <br><br>
                <sdiv>
                <fieldset>
                    <legend><b>Add New Product</b><br></legend>
                    <form action="placeorder" method="post">
                    
                    	<label for="itemid">ItemID</label>
                    	<input type="number" name="itemid" size="10"><br><br>

           
                        <label for="price">Unit price </label>
                        <input type="number" name="price" size="48"><br><br>
                        

                        <label for="quantity">Quantitty </label>
                        <input type="number" id="quan" name="quantity" size="48"><br><br>

                        <div style="text-align: center;">
                            <button type="submit">Add Order</button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>
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