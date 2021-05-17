<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/form.css">
    <link rel="stylesheet" type="text/css" href="../css/forms.css">
    <title>Forget Password</title>
</head>
<body>
    <div class="toplogin">
        Already a member? <a href="../login.jsp" class="link">Log In</a>
    </div>
    <a href="../index.jsp"><img src="../img/cart.png" class="logo"></a><br>
    <br><br>

    <div class="center_form">
        <div>
            <form action="forgetPassword1" method="POST">
                <fieldset>
                    <legend>Forgot Password</legend>
                    <div class="formtop">
                        Account verification
                    </div><br>
                    <div>
                        <label for="email">Enter Your Email :</label><br>
                        <input type="email" id="email" name="email" size="48" pattern="[a-z 0-9 +-_%]+@+[a-z 0-9 +-_%]+.[a-z]{2,3}" Required><br><br>

                        <label for="telno">Enter Telephone :</label><br>
                        <input type ="text" id="telno" name="telno" pattern="[0-9]{11}" size="48" Required><br><br>
                    </div>
                    <div class="center">
                    	<div style = "color:red;"><p>${message}</p></div>
                           <button type="submit" id="submitc1" class="greenbtn btn">next</button> 
                       </div>
                   </fieldset>
               </form>
           </div>
           
       </div><br><br><br><br><br><br>
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