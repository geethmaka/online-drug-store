<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <title>Seller Account</title>
    </head>
    <body>
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
                <c:forEach items="${value}" var="Item"> 
		        	<tr>
				   		<td><c:out value="${Item.getName()}" /></td>
				    	<td><c:out value="${Item.getQuantity()}" /></td>
				    	<td><c:out value="${Item.getUnitPrice()}" /></td>
				    	<td>
				    		<form action="deleteuser" method="post">
				    	 		<button type = "submit" name="id" value="${Item.getItemID()}">Remove Item</button>
				    	 	</form>
				    	 </td>
			    	 </tr>
	    		</c:forEach>
            </table>
            <br>
            <div>
                <fieldset>
                    <legend><b>Add New Product<br></legend>
                    <form action="../php/additem.php" method="post">
                        <label for="pname">Product Name </label>
                        <input type="text" id="pname" name="pname" size="48" Required><br><br>

                        <label for="desc">Description </label>
                        <input type="text" id="desc" name="desc" size="48" Required><br><br>

                        
                        <label for="price">Unit price </label>
                        <input type="text" name="price" size="48" Required><br><br>
                        

                        <label for="quantity">Quantitty </label>
                        <input type="text" id="quan" name="quantity" size="48" Required><br><br>

                        <label for="category">Category </label>
                        <select name="category">
                            <option value="Electronics">Electronics</option>
                            <option value="JewelryWatches">Jewelry & Watches</option>
                            <option value="Sports">Sports</option>
                            <option value="MenFassion">Men's Fassion</option>
                            <option value="WomenFassion">Women's Fassion</option>
                            <option value="HouseholdItems">Household Items</option>
                            <option value="Toys">Toys</option>
                            <option value="Tools">Tools</option>
                            <option value="Beauty">Beauty</option>
                            <option value="Hair">Hair</option>
                            <option value="Fitness">Fitness</option>
                            <option value="Shoes">Shoes</option>
                            
                        </select><br><br>

                        <div style="text-align: center;">
                            <button type="submit">Submit</button>
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
        var idr = '<?php echo isset($_SESSION['username']); ?>'; 
        var uname = '<?php echo $_SESSION['username']; ?>'; 
        console.log(idr);
         if(idr==1){
             document.getElementById("logOutButtonContainer").style.display="block";
             document.getElementById("username").innerHTML=uname;
             document.getElementById("loginButtonContainer").style.display="none";
         }
    </script>
</html>