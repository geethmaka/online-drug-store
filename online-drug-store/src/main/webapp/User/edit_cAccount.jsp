<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title>Edit Account</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/signedInUser.css">
    <link rel="stylesheet" type="text/css" href="../css/customer.css">
    
    <script src="JS/Edit_Account.js"></script>
</head>
<body>
    <div class="topBar">
        <div class="logo">
            <a href="../index.jsp"><img src="../img/cart.png" height="100" width="100"></a>
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
            <span id="username">${Customer.getFirstName()}</span><br><br>
            <a href="customer_account.jsp"><button class="btn">My Account</button></a>
            <form action="../logout" method="post"><button type="submit" class="btn">SignOut</button></form>
        </div>
    </div>
    <div class="main">
    	<br><br>
        <div class="covermain">
            <img src="../img/logo.png" height="100" width="100" class="propic">
        </div>
        <!--<button id="up_pro_pic">UPLOAD</button><br>-->
        <br>
        <div>
        	    <div class="right">
	            	<form action="deleteaccount" method="post"><button type="submit"name="delete" class="btn1" >Delete Account</button></form>
	            </div>
            <form action="EditAccount" method="POST">
            	<br>
            
                <input type="checkbox" id="chgun" name="change_un" onclick='enableusername()'>
                <label for="change_un">Change Username</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>

                <fieldset id="chgusername" disabled style="border: none;">
                    <label for="chgfname">First Name :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" id="chgfname" name="fname"></input> <br><br>

                    <label for="chglrname">Last Name :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" id="chglname" name="lname"></input> <br><br>
                </fieldset>

                <input type="checkbox" id="chgpwd" name="change_pwd" onclick='enablepassword()'>
                <label for="change_pwd">Change Password</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>

                <fieldset id="pwdreset" disabled style="border: none;">
                    <label for="oldpwd">Old Password :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="password" id="password" name="oldpwd"> <br><br>

                    <label for="newpwd">New password :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="password" id="newpwd" name="newpwd"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                    title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters"></input> <br><br>

                    <label for="reenterpwd">Re-enter new password :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="password" id="newrpwd" name="reenterpwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" ></input> <br><br>
                </fieldset>
				<div style = "color:red;"><p>${message}</p></div>
				<div style = "color:red;"><p>${message1}</p></div>
                
                <button type="submit" id="submit" name="submit" class="btn1" value="submit">SUBMIT</button>   
            </form><br>
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