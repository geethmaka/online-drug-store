<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.classes.Item" %>
<%@ page import = "com.common.DatabaseConnection" %>
<%
	if(request.getSession().getAttribute("Logged")==null){
		request.getSession().setAttribute("Logged","Guest");
	}

	DatabaseConnection dbc = new DatabaseConnection();
	Item item = dbc.fetchItem(Integer.parseInt(request.getParameter("id")));
%>
<%if(request.getSession().getAttribute("Logged").equals("User")){ %>
<% if(item!=null){ %>
<!DOCTYPE html>
<html>
    <head>
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
                <span id="username">${Customer.getFirstName()}</span><br><br>
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
	        <form action='buyitem' method='post' style="text-align:left;">
	        	 <h3 style="color:white">${message}</h3>
		         <h1><%=item.getName()%></h1>
		         <p>
		         <span>Available Quantity : </span><span><%=item.getQuantity()%></span>
		         <br><br>
		         <span>Price : Rs. </span><input type="number" name="price" value="<%=item.getUnitPrice()%>" readonly/>
		         <br><br>
		         <span>Quantity : <input type="number" id="quan" name="quantity" size="48" required></span>
		         <br><br>
		         <button type='submit' name='itemID' class='btn1' value="<%=item.getItemID()%>">Purchase</button>
		         </p>
	        </form>
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
<% } else{%>
<p>Not found</p>
<% }%>
    </body>
</html>
<%} else {
	RequestDispatcher r=request.getRequestDispatcher("login.jsp");  
	request.setAttribute("Message","Please login to buy a item");
	r.forward(request, response);
}
%>
