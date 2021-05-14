<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href="home.jsp"><img src="img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                <div class="searchBarRow" style="text-align: center;align-items: center;">
                    <div style="text-align: center;">
                        <input style="height:40px;" type="text" size="150" placeholder="Search">
                    </div>
                    <div>
                        <button class="searchButton"><img src="img/search.png" height="30" width="30"></button>
                    </div>
                </div>
            </div>
            <div style="align-items: center;align-content: center; text-align: center;padding-top: 35px;"></div>
        </div>
        <div class="main">
            <h1 style="text-align: center;">FAQ</h1>
            <div class="question">
                <h3>Question 1</h3>
                <p>Answer</p>
            </div>
            <div class="question">
                <h3>Question 2</h3>
                <p>Answer</p>
            </div>
            <br>     
        </div>
        <footer>
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
                        <img src="img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>