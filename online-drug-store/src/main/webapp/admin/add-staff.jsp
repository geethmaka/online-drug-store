<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/signedInUser.css">   
    <link rel="stylesheet" type="text/css" href="../css/customer.css">   
    <link rel="stylesheet" type="text/css" href="../css/form.css">
    <link rel="stylesheet" type="text/css" href="../css/forms.css">
    
    
</head>
	<body>
        <div class="main">
                   <a href="./home.php"><img src="../img/cart.png" height="150" width="150"></a>
            </div>
            <div>
                <form method="post" action="addstaff">
                    <fieldset>
                        <legend style="text-align: center;">Staff Registration</legend>
                        <div style="text-align:left;">

                            <label for="fname">First Name :</label><br>
                            <input type="text" id="fname" name="fname" size="48" value="test"><br><br>

                            <label for="lname">Last Name :</label><br>
                            <input type="text" id="lname" name="lname" size="48" value="test"><br><br>

                            <label for="email">Email :</label><br>
                            <input type="text" id="email" name="email" size="48" value="test"><br><br>
                            <!-- pattern="[a-z 0-9 +-_%]+@+[a-z 0-9 +-_%]+.[a-z]{2,3}" Required -->

                            <label for="number">Number :</label><br>
                            <input type="number" id="number" name="number" size="10" value="00"><br><br>


                            <label for="type">Type :</label><br>
                            &nbsp;&nbsp;<select name="type" id="type">
                                <option value="" selected></option>
                                <option value="Admin">Admin</option>
                                <option value="DeliveryM">Delivery Manager</option>
                                <option value="Stock ">Stock Manager</option>
                            </select>
                            <br><br>
                            <label for="pw">Password :</label><br>
                            <input type="password" id="pwd" name="pwd" size="48" 
                            title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters" value="test"><br><br>
                            <!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" -->

                            <label for="rpwd">Re-enter Password :</label><br>
                            <input type="password" id="rpwd" name="rpwd" size="48"  title="Six or more characters" ><br><br>
                            
                        </div>
                        <input type="checkbox" id="agreeterms" name="agreeterms" onclick="enableButon()">
                            <label for="agreeterms">By clicking, I agree to the Terms of Use and have read the Privacy Statement</label><br><br>
                        <div class="center">    
                            <button type="submit" id="submita" class="greenbtn btn">register</button>
                        </div>
                    </fieldset>
                </form>
            </div>
            <!--<div style="float:left;padding-left: 300px;">
                Already a member? <a style="color:red" href="./login.html">Log In</a>
            </div>-->
        </div>
        <div>
            <div class="bottomBar">
                <div style="text-align: center;justify-content: center;align-content: center;align-items: center;">
                    <br><br>
                   
                    <a class="link" href="faq.jsp">FAQ</a>&nbsp;|&nbsp;
                    <a class="link" href="contact.jsp">Contact Us</a>&nbsp;|&nbsp;
                    <a class="link" href="privacy.jsp">Privacy Policy</a>&nbsp;|&nbsp;
                    <a class="link" href="help.jsp">Help</a>&nbsp;|&nbsp;
                    <a class="link" href="about.jsp">About</a>
                    <div>
                        <br>
                        <img src="../img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="../img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="../img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>