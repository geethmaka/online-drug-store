<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
    <body>
        <center>
            <img src="../img/cart.png" class="logo"><br><br>
        <center>
        <div class="center_form">
            <div>
                <form action="../php/login.php" method="POST" onsubmit="return validateForm()">
                    <fieldset>
                        <div class="formtop">
                            <span>Sign in to buyme or <a href="CommonRegistration.html"class="link">Create an Account</a></span>
                        </div><br>
                        <div>
                            <label for="email">EMAIL ADDRESS :</label><br>
                            <input type="email" id="email" name="email" size="48" pattern="[a-z 0-9 +-_%]+@+[a-z 0-9 +-_%]+.[a-z]{2,3}" ><br><br>

                            <label for="password">PASSWORD :</label><br>
                            <input type ="password" id="password" name="password" size="48"><br>
                        </div>
                        <div>
                            <a href="forgot_password1.html" class="link">Forgot Password?</a>
                        </div><br><br>
                        <div class="center">
                            <button id="login" class="greenbtn btn">sign in</button> 
                        </div>    
                    </fieldset>
                </form>
            </div>
        </div><br><br><br><br><br><br><br>
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