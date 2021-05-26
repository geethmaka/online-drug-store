<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ page import = "com.classes.Item" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/table.css">
<link rel="stylesheet" href="../css/home.css">
<link rel="stylesheet" href="css/main.css">
 <link rel="stylesheet" type="text/css" href="../css/forms.css">
<meta charset="ISO-8859-1">
     <title>Seller Account</title>
    </head>
<% if(request.getSession().getAttribute("Logged").equals("Stock")) {
	Item[] data = (Item[]) request.getSession().getAttribute("data");
%>

    <body>
    	
    <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <img src="../img/cart.png" height="100" width="100">
            </div>
            <div class="searchBar">
                <div></div>
                <div class="searchBarRow" style="text-align: center;align-items: center;">
                	<h1>Stock Handler</h1>
                </div>
            </div>
            <div style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
            <br><br>
                <form action="../logout" method="post"><button type="submit">Logout</button></form>
            </div>
        </div>
        <div class="main">
        <br><br>
            <table class="table" border ="1">
                <tr>
                    <th><b>Product Name</b></th>
                    <th><b>Quantity</b></td> 
                    <th><b>Unit Price</b></td>  
                </tr>
                <c:forEach items="${data}" var="Item"> 
                	<form action="updateitem" method="post">
		        	<tr>
		        		<td><input type="text" name="productname" value="<c:out value="${Item.getName()}" />"></td>
				   		<td><input type="number" name="productquantity" value="<c:out value="${Item.getQuantity()}" />"></td>
				    	<td><input type="number" name="productprice" value="<c:out value="${Item.getUnitPrice()}" />"></td>
				    	<td>
				    	 		<button type = "submit" name="id" value="${Item.getItemID()}">Update Item</button>
				    	 	</form>
				    		<form action="deleteitem" method="post">
				    	 		<button type = "submit" name="id" value="${Item.getItemID()}">Remove Item</button>
				    	 	</form>
				    	 </td>
			    	 </tr>
	    		</c:forEach>
            </table>
            <br>
            <div>
                <fieldset>
                    <legend><b>Add New Product</b><br></legend>
                    <form action="additem" method="post">
                        <label for="pname">Product Name </label>
                        <input type="text" id="pname" name="pname" size="48"><br><br>

                        <label for="desc">Description </label>
                        <input type="text" id="desc" name="desc" size="48"><br><br>

                        
                        <label for="price">Unit price </label>
                        <input type="number" name="price" size="48"><br><br>
                        

                        <label for="quantity">Quantitty </label>
                        <input type="number" id="quan" name="quantity" size="48"><br><br>

                        <div style="text-align: center;">
                            <button type="submit">Add product</button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>
        <br>
        <div class="bottomBar">
            <div class="footer">
                <br><br>
               
                <a href="faq.html">FAQ</a>&nbsp;|&nbsp;
                <a href="contact.html">Contact Us</a>&nbsp;|&nbsp;
                <a href="privacy.html">Privacy Policy</a>&nbsp;|&nbsp;
                <a href="help.html">Help</a>&nbsp;|&nbsp;
                <a href="about.html">About</a>
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
 <p>blocked</p>
 </body>
 <%} %>
</html>