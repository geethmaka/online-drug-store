<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ page import = "com.classes.Item" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <title>Seller Account</title>
    </head>
<% if(request.getSession().getAttribute("Logged").equals("Stock")) {
	Item[] data = (Item[]) request.getSession().getAttribute("data");
%>

    <body>
    	<form action="../logout" method="post"><button type="submit">Logout</button></form>
        <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href="./home.php"><img src="../img/cart.png" height="100" width="100"></a>
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
                <div></div>
            </div>
            <div id="logOutButtonContainer" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;display:none;">
                <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
                <span id="username">[username]</span><br><br>
                <form action="../php/logout.php"><button type="submit">SignOut</button></form>
            </div>
            <div id="loginButtonContainer" class="searchBar" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
                <div>
                    <a href="./login.html"><button>Login</button></a>
                </div>
                <div>
                    <a href="./commonregistration.html"><button>SignUp</button></a>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="covermain">
                <img src="../img/cover2.jpg" class="cover">
                <img src="../img/logo.png" height="100" width="100" class="propic">
                <div class="right">
                    <button><a href="edit_account.php?user=seller">Edit account</a></button>
                </div>
                <br>
                <p><?php echo $_SESSION['username']; ?></p>
                <p><?php echo $_SESSION['email']; ?></p>
            </div><br>
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
    <script type="text/javascript">
    </script>
 <%}else{ %>
 <p>blocked</p>
 </body>
 <%} %>
</html>