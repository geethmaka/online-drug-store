<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ page import = "com.common.Staff" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<% if(request.getSession().getAttribute("Logged")=="Admin") {
	Staff[] data = (Staff[]) request.getSession().getAttribute("data");
%>
	<body>
		<!--<div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href=""><img src="../img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                <form action="" method="post">
                    <div class="searchBarRow" style="text-align: center;align-items: center;">
                        <div style="text-align: center;">
                            <input style="height:40px;" type="text" name="search" size="150">
                        </div>
                        <div>
                            <button type="submit" class="searchButton"><img src="" height="30" width="30"></button>
                        </div>
                    </div>
                </form>
                <div></div>
            </div>-->
            <!--<div id="logOutButtonContainer" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;display:none;">
                <span style="font-weight: bolder;font-size: 20px;">Welcome Back,</span><br>
                <span id="username">[username]</span><br><br>
                <a href="./customerAccount.php"><button>My Account</button></a>&nbsp;&nbsp;
                <form action="../php/logout.php"><button type="submit">SignOut</button></form>
            </div>
            <div id="loginButtonContainer" class="searchBar" style="align-items: center;align-content: center; text-align: center;padding-top: 35px;">
                <div>
                    <a href="./login.html"><button>Login</button></a>
                </div>
                <div>
                    <a href=""><button>SignUp</button></a>
                </div>
            </div>
        </div>-->
        <div id="main" class="main">
            <br>
            <table border="1">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone No.</th>
                    <th>Password</th>
                    <th>Staff</th>
                </tr>
                
	               	<c:forEach items="${data}" var="staff"> 
	               	<form action="updateuser" method="post">
			        	<tr>
					    	 <td><input type="text" name="fname" value="<c:out value="${staff.getFname()}" />"></td>
					    	 <td><input type="text" name="lname" value="<c:out value="${staff.getLname()}" />"></td>
					    	 <td><input type="text" name="email" value="<c:out value="${staff.getEmail()}" />"></td>
					    	 <td><input type="text" name="phone" value="<c:out value="${staff.getPhoneNo()}" />"></td>
					    	 <td><input type="text" name="password" value="<c:out value="${staff.getPassword()}" />"></td>
					    	 <td>
					    	 	<select name="staff">
					    	 		<option value="Delivery">Delivery Staff</option>
					    	 		<option value="Other">Other</option>
					    	 	</select>
					    	 </td>
					    	 <td>
					    	 	<button type = "submit" name="id" value="<c:out value="${staff.getId()}" />">Update User</button>
					    	 <td>
				    	 	</tr>
				    </form>
		    		</c:forEach>
    		</table>
            <br>
        </div>
        <div class="bottomBar">
            <div style="text-align: center;justify-content: center;align-content: center;align-items: center;">
                <br><br>
               
                <a class="link" href="faq.html">FAQ</a>&nbsp;|&nbsp;
                <a class="link" href="contact.html">Contact Us</a>&nbsp;|&nbsp;
                <a class="link" href="privacy.html">Privacy Policy</a>&nbsp;|&nbsp;
                <a class="link" href="help.html">Help</a>&nbsp;|&nbsp;
                <a class="link" href="about.html">About</a>
                <div>
                    <br>
                    <img src="../img/facebook.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/twitter.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../img/insta.png" height="50px" width="50px">&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
        </div>
    </body>
 <%}else{ %>
 <body>
 <p>blocked</p>
 </body>
 <%} %>
</html>