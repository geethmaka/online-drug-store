<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/forms.css">
        <link rel="stylesheet" type="text/css" href="../css/main.css">
        <script src="../js/notAvaliabale.js"> </script> 
        <title>Forget Password</title>
    </head>
    <body>
        <div class="toplogin">
            Already a member? <a href="login.jsp"  onclick="notAvailableAlert()">Log In</a>
        </div>
        <br><br><br><br>

        <div class="center_form">
            <div>
                <form action="../php/forgotPassword.php" method="POST">
                    <fieldset>
                        <legend>Forgot Password</legend>
                        <div class="formtop">
                            Account verification
                        </div><br>
                        <div>
                            <label for="email">Enter Your Email :</label><br>
                            <input type="email" id="email" name="email" size="48" pattern="[a-z 0-9 +-_%]+@+[a-z 0-9 +-_%]+.[a-z]{2,3}" Required><br><br>

                            <label for="nic">Enter NIC.No :</label><br>
                            <input type ="text" id="nic" name="nic" size="48"  title="Enter numbers[0-9] and [v or V]" Required ><br><br>

                            <label for="telno">Enter Telephone :</label><br>
                            <input type ="text" id="telno" name="telno" pattern="[0-9]{11}" size="48" Required><br><br>
                        </div>
                        <div class="center">
                            <button type="submit" id="submitc1" class="greenbtn btn"><a href="forgot_password2.jsp"></a>next</a></button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div><br><br><br><br><br><br><br><br>
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
</html>