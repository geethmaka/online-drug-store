<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="../css/forms.css">
    <title>Login</title>
</head>
    <body>
        <center>
            <img src="../img/cart.png" class="logo"><br><br>
        <center>
        <div class="../center_form">
            <div>
                <form action="login" method="post">
                    <fieldset>
                        <div class="formtop">
                            <span>Sign in or <a href="Registration1" class="link">Create an Account</a></span>
                        </div><br>
                        <div>
                            <label for="email">EMAIL ADDRESS or username:</label><br>
                            <input type="text" id="email" name="email" size="48"><br><br>

                            <label for="password">PASSWORD :</label><br>
                            <input type ="password" id="password" name="password" size="48"><br>
                        </div>
                        <div>
                            <a href="forgot_password1.html" class="link">Forgot Password?</a>
                        </div><br><br>
                        <div class="center">
                            <button type="submit" id="login" class="greenbtn btn">sign in</button> 
                        </div>    
                    </fieldset>
                </form>
            </div>
        </div><br><br><br><br><br><br><br>
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
                    <img src="img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div>
    </body>
</html>