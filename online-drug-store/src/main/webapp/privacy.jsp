<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/home.css">
        <style>
            .bottomBar{
                background-color: #4885ED;
                width: 100%;
                position: fixed;
                bottom: 0px;
            }
        </style>    
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
            <h1 style="text-align: center;">Privacy Policy</h1>
            <br>
            <p style="text-align: left;">
                We are committed to protecting your personal information and your right to privacy. If you have any questions 
                or concerns about our policy, or our practices with regards to your personal information, please contact us.</p>
            <p style="text-align: left;">    
                Generally, you control the amount and type of information you provide to us when using our Website. The personal 
                information that we collect depends on the context of your interaction with us and the Website, the choices you make 
                and the products and features you use. The personal information we collect can include the following:</p>
            <ul style="text-align: left;">
                <li>Name, Email Address and Contact Data.</li>
                <li>Payment Information. If you choose to buy one of our Policy, we collect payment information through our payment processor.</li> 
                <li>All payment information is securely stored by our payment processor and we do not have access to your sensitive information, 
                such as credit card number or security code.</li>
            </ul>
            </p>
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