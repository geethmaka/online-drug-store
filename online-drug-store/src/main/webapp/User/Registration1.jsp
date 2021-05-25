<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="../css/forms.css">
    <script src="JS/RegisterUser.js"></script>
    <title>Create Account</title>
</head>
<body>
    <div class="toplogin">
        Already a member? &nbsp; <a href="../login.jsp"  class="link">Log In</a>
    </div>
    <a href="../index.jsp"><img src="../img/cart.png" class="logo"></a><br><br>
    <div class="center_form">
    	<div>
            <form action="Register1Servlet" method="Post">
                <fieldset>
                    <legend>Registration</legend>
                    <div class="formtop">
                        Welcome!<br> 
                    </div>
                    <h4>Enter Your Details</h4>
                    <div>
                        <label for="fname">First Name :</label><br>
                        <input type="text" id="fname" name="fname" size="48" placeholder="ex:-Peter"Required><br><br>

                        <label for="lname">Last Name :</label><br>
                        <input type="text" id="lname" name="lname" size="48" placeholder="ex:-Paker"Required><br><br>

                        <label for="email">Email :</label><br>
                        <input type="email" id="email" name="email" size="48" 
                        placeholder="ex:-peterpaker@gmail.com" Required pattern="[a-z 0-9 .+-_%]+@+[a-z 0-9 +-_%]+\.[a-z]{2,3}"><br><br>

                        <label for="pno">Telephone (Enter Phone number starting from 94):</label><br>
                        <input type ="tel" id="pno" name="pno"  size="48"placeholder="94712345678" Required pattern="[0-9]{11}"><br><br>
                        
                        <label for="pwd">Password :</label><br>
                        <input type="password" id="pwd" name="pwd" size="48"  
                        title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters" Required
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"><br><br>
                        
                        <label for="rpwd">Re-enter Password :</label><br>
                        <input type="password" id="rpwd" name="rpwd" size="48"  title="Six or more characters" Required pattern=".{6,}"><br><br>
                        
                        <input type="checkbox" id="agreeterms" name="agreeterms" value="agree" onclick='enableButton()'>
                        <label for="agreeterms">By clicking, I agree to the Terms of Use and have read the Privacy Statement</label><br><br>
                    </div>
                    <div class="center">
                    	<div style = "color:red;"><p>${message}</p></div>
                        <button type="submit" id="submitc" class="greenbtn btn" name="action" value="customer" disabled>Register</button>
                    </div>
                </fieldset>
            </form>
        </div>
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