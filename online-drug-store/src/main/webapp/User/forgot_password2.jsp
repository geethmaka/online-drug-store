<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/forms.css">
        <link rel="stylesheet" type="text/css" href="../css/main.css">
        <script src="../js/forgetPassword.js"> </script> 
       
        <title>Forget Password</title>
    </head>
    <body>
	<br><br><br><br><br>
        <div class="center_form">
            <div>
                <form action="../php/updatePassword.php" method="POST" onsubmit="return checkPassword()">
                    <fieldset>
                        <legend>Forgot Password</legend>
                        <div class="formtop">
                            Change Password
                        </div><br>
                        <div>
                            <label for="newpwd">Enter New password :</label><br>
                            <input type="password" id="password" name="password" size="48"
                            title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters"Required > </input> <br><br>

                            <label for="reenterpwd">Re-enter new password :</label>
                            <input type="password" id="confirm" size="48"  Required >
                        </div><br>

                        <div class="center">
                            
                            <button type="submit" id="submitc1" class="greenbtn btn">Submit</button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div><br><br><br><br><br><br><br><br><br><br><br>
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