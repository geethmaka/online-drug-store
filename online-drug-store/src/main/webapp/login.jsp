<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% if((request.getSession().getAttribute("Logged")==null)||request.getSession().getAttribute("Logged").equals("Guest")){ %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/forms.css">
    <title>Health first</title>
</head>
    <body>
    	<img src="img/cart.png" class="logo"><br><br>
        <br><br>
        <div class="center_form">
            <div>
                <form action="login" method="post">
                    <fieldset>
                        <div class="formtop">
                            <span>Sign in or <a href="User/Registration1.jsp" class="link">Create an Account</a></span>
                        </div><br>
                        <div>
                            <label for="email">EMAIL ADDRESS:</label><br>
                            <input type="text" id="email" name="email" size="48" value=""><br><br>

                            <label for="password">PASSWORD :</label><br>
                            <input type ="password" id="password" name="password" size="48"><br>
                        </div>
                        <div>
                            <a href="User/forgot_password1.jsp" class="link">Forgot Password?</a>
                        </div>
                        <div class='center'>
                        	<div style = "color:red;"><p>${Message}</p></div>
                        </div>
                        <div class="center">
                            <button type="submit" id="login" class="greenbtn btn">sign in</button> 
                        </div>    
                    </fieldset>
                </form>
            </div>
        </div><br><br><br><br><br><br>
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

<% }else if(request.getSession().getAttribute("Logged").equals("Admin")){
	response.sendRedirect("admin/index.jsp");}
else if(request.getSession().getAttribute("Logged").equals("Delivery")){
	response.sendRedirect("delivery/index.jsp");
}
else if(request.getSession().getAttribute("Logged").equals("Stock")){
	response.sendRedirect("stock/index.jsp");
}
else if(request.getSession().getAttribute("Logged").equals("User")){
	response.sendRedirect("index.jsp");
}
%>