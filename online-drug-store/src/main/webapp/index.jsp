<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.classes.Item" %>
<%@ page import = "com.common.DatabaseConnection" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	if(request.getSession().getAttribute("Logged")==null){
		request.getSession().setAttribute("Logged","Guest");
	}

	if(request.getAttribute("data")==null){
		DatabaseConnection dbc = new DatabaseConnection();
		Item[] items = (Item[]) dbc.getItemDetails();
		request.setAttribute("data", items);
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<style>
			.container{
				display:gird;
				grid-template-rows:10% 80% 10%;
			}
			.product{
			  width: 150px;
			  height :150px;
  				border: 2px solid green;
  				}
		</style>
		<link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/signedInUser.css">
	</head>
    <body>
        <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href="index.jsp"><img src="img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                <form action="search" method="post">
                    <div class="searchBarRow" style="text-align: center;align-items: center;">
                        <div style="text-align: center;">
                            <input style="height:40px;" type="text" name="search" size="150">
                        </div>
                        <div>
                            <button type="submit" class="searchButton"><img src="img/search.png" height="30" width="30"></button>
                        </div>
                    </div>
                </form>
                <div></div>
            </div>
            <%if(request.getSession().getAttribute("CustomerID")!=null){ %>
            <!-- this part only shows when user logged in-->
            <div id="logOutButtonContainer" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
                <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
                <span id="username">${Customer.getFirstName()}</span><br>
                <a href="User/customer_account.jsp"><button class="btn">My Account</button></a><br>
                <form action="logout"><button type="submit" class="btn">SignOut</button></form>
            </div>
            <%}else{ %>
            <!--this page is shown by default-->
            <div id="loginButtonContainer" class="searchBar" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
                <div>
                    <a href="login.jsp"><button class='button btn'><b>Login</b></button></a>
                </div>
                <div>
                    <a href="User/Registration1.jsp"><button class="btn"><b>SignUp</b></button></a>
                </div>
            </div>
            <%}%>
        </div>
        <div class="main">
            <div id="items">
            <c:forEach items="${data}" var="item">
	            <div class="category"> 
	            		<br>
	                    <a href="item.jsp?id=<c:out value="${item.getItemID()}"/>"><img style="border-radius: 50%;" src="img/thumbnail.jpg" height="150" width="150"></a><br>
	                    <p><c:out value="${item.getName()}"/></p>
				</div>
        	</c:forEach>
        	</div>
        </div>
        <br>
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
    </body>
</html>