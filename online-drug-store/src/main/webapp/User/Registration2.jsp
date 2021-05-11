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
        Already a member? <a href="login.html" class="link">Log In</a>
    </div>
    <img src="../img/cart.png" class="logo"><br><br>
    <div class="center_form">
        <div>
            <form action="" method="POST">
                <fieldset>
                    <legend>Customer</legend>
                    <div class="formtop">
                        Welcome<br>
                    </div>
                    <h4>Enter Your Shipping Details</h4>    
                    <div>
                        <label for="address1">Address Line 1 :</label><br>
                        <input type="text" id="address1" name="address1" size="48" Required><br><br>

                        <label for="address2">Address Line 2(optional) :</label><br>
                        <input type="text" id="address2" name="address2" size="48"><br><br>

                        <label for="city">City :</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label for="State">State/Province :</label><br>
                        <input type="text" id="city" name="city" size="20" Required>
                        <input type="text" id="state" name="state" size="20" Required><br><br>

                        <input type="checkbox" id="agreeterms" name="agreeterms" value="agree" onclick='enableButton()'><!-- Create a function to enable button when check the box -->
                        <label for="agreeshipping">By clicking,I agree that the Shipping details are correct.</label><br><br>
                    </div>
                    <div class="center">
                        <button type="submit" id="submitc" class="greenbtn btn" disabled>SUBMIT</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </div><br>
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
</html>