<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add staff</title>
<link rel="stylesheet" type="text/css" href="../css/forms.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/table.css">
<link rel="stylesheet" href="../css/home.css">
<link rel="stylesheet" href="../css/signedInUser.css">
</head>
	<body>
	            <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href=""><img src="../img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                                <div class="searchBarRow" style="text-align: center;align-items: center;">
                	<h1>Admin Panel</h1>
                </div>
                <div></div>
            </div>
            <div style="float: right;">
            	<br><br>
                <a href="add-staff.jsp"><button>Add another employee</button></a>
                <a href="update-user-details.jsp"><button>Update Staff Details</button></a>
                <form action="../logout" method="post"><button type="submit">Logout</button></form>
            </div>
        </div>
	    <div class="center_form">
	     <div>
	         <form method="post" action="addstaff">
	             <fieldset>
	                 <legend>Staff Registration</legend>
	                 <div><div style = "color:red;"><p>${message}</p></div></div>
	                 <div>
	                     <label for="fname">First Name :</label><br>
	                     <input type="text" id="fname" name="fname" size="48" value="test"><br><br>
	
	                     <label for="lname">Last Name :</label><br>
	                     <input type="text" id="lname" name="lname" size="48" value="test"><br><br>
	
	                     <label for="email">Email :</label><br>
	                     <input type="text" id="email" name="email" size="48" value="test"><br><br>
	                     <!-- pattern="[a-z 0-9 +-_%]+@+[a-z 0-9 +-_%]+.[a-z]{2,3}" Required -->
	
	                     <label for="number">Number :</label><br>
	                     <input type="number" id="number" name="number" size="10" value="00"><br><br>
	
	
	                     <label for="type">Type :</label><br>
	                     &nbsp;&nbsp;<select name="type" id="type">
	                         <option value="" selected></option>
	                         <option value="Admin">Admin</option>
	                         <option value="DeliveryM">Delivery Manager</option>
	                         <option value="Stock ">Stock Manager</option>
	                     </select>
	                     <br><br>
	                     <label for="pw">Password :</label><br>
	                     <input type="password" id="pwd" name="pwd" size="48" 
	                     title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters" value="test"><br><br>
	                     <!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" -->
	
	                     <label for="rpwd">Re-enter Password :</label><br>
	                     <input type="password" id="rpwd" name="rpwd" size="48"  title="Six or more characters" ><br><br>
	                     
	                     <input type="checkbox" id="agreeterms" name="agreeterms" onclick="enableButon()">
	                     <label for="agreeterms">By clicking, I agree to the Terms of Use and have read the Privacy Statement</label><br><br>
	                 </div>
	                 
	                 <div class="center">    
	                     <button type="submit" id="submita" class="greenbtn btn">register</button>
	                 </div>
	             </fieldset>
	         </form>
	     </div>
	    </div>
            <!--<div style="float:left;padding-left: 300px;">
                Already a member? <a style="color:red" href="./login.html">Log In</a>
            </div>-->
        </div><br>
        
        <div class="bottomBar">
            <div class="footer">
                <br><br>
                <a href="../faq.jsp">FAQ</a>&nbsp;|&nbsp;
                <a href="../contact.jsp">Contact Us</a>&nbsp;|&nbsp;
                <a href="../privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
                <a href="../help.jsp">Help</a>&nbsp;|&nbsp;
                <a href="../about.jsp">About</a>
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