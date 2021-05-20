<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <title>Customer Account</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/signedInUser.css">   
    <link rel="stylesheet" type="text/css" href="../css/customer.css">  
  
</head>
<body>
    <div class="topBar">
        <div class="logo">
            <img src="../img/cart.png" height="100" width="100">
        </div>
        <div class="searchBar">
            <div></div>
            <div class="searchBarRow">
                <div style="text-align: center;">
                    <input style="height:40px;" type="text" size="150">
                </div>
                <div>
                    <button class="searchButton"><img src="../img/search.png" height="30" width="30"></button>
                </div>
            </div>
        </div>
        <div class="welcome">
            <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
            <span id="username">${username}</span><br><br>
            <button class="btn">My Account</button>&nbsp;&nbsp;
            <button class="btn">SignOut</button>
        </div>
    </div>
    <div class="main">
        <div class="covermain">
        	<br><br>
            <img src="../img/logo.png" height="100" width="100" class="propic">
            <div class="right">
                <button class="btn"><a href="edit_cAccount.jsp">Edit account</a></button>
            </div>
            <div>
            	<p>[Account Name]</p>
	            <p>[email address]</p>
            </div>      
        </div><br>
        <div class="left">
            <p>Order Number:<span> </span></p>
            <p>Item name:<span> </span></p>
            <p>Quantity:<span> </span></p>
            <p>Total:<span> </span></p>
            <p>Status:<span> </span></p>
        </div>
   
    <div class="bottomBar">
        <div class="footer">
            <br><br>
            <a href="report.jsp">Report</a>&nbsp;|&nbsp;
            <a href="/faq.jsp">FAQ</a>&nbsp;|&nbsp;
            <a href="contact.jsp">Contact Us</a>&nbsp;|&nbsp;
            <a href="privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
            <a href="help.jsp">Help</a>&nbsp;|&nbsp;
            <a href="abput.jsp">About</a>
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