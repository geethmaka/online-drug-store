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
    <link rel="stylesheet" type="text/css" href="../css/form.css">
    <link rel="stylesheet" type="text/css" href="../css/forms.css">
    <script src="JS/Edit_Account.js"></script>
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
            <span id="username">[username]</span><br><br>
            <button>My Account</button>&nbsp;&nbsp;
            <button>SignOut</button>
        </div>
    </div>
    <div class="main">
            <img src="../img/logo.png" height="100" width="100" class="propic">
            <br><br><br><br><br><br>
        </div><br><br>
        <!--<button id="up_pro_pic">UPLOAD</button><br>-->
        <br>
        <div>
            <form action="EditAccount" method="POST">
                <input type="checkbox" id="chgun" name="change_un" onclick='enableusername()'>
                <label for="change_un">Change Username</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>

                <fieldset id="chgusername" disabled style="border: none;">
                    <label for="chgfname">First Name :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" id="chgfname"></input> <br><br>

                    <label for="chglrname">Last Name :</label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" id="chglname"></input> <br><br>
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

                <button id="delete" name="delete">Delete Account</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="submit" id="submit">SUBMIT</button>
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