<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.LinkedList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>
        <div>
            <span style="font-size: 30px;">Admin Panel</span>
            <div style="float: right;">
                <a href="addstaff.html"><button>Add another employee</button></a>
                <form action="update-redirect" method="post"><button type="submit">Update Staff Details</button></form>
                <!--<form action="../php/logout.php"><button type="submit">SignOut</button></form>-->
            </div>
        </div>
        <br>
        <div class="main">
            <br>
            <br>
            <div>
                    <h3>Users</h3>
                    <table id="table" border="1" width="100%">
                        <tr>
                            <td colspan="6">
                                User Detials
                            </td>
                            <td rowspan="2">
                                Action
                            </td>
                        </tr>
                        <tr>
		                    <th>First Name</th>
		                    <th>Last Name</th>
		                    <th>Email</th>
		                    <th>Phone Number</th>
		                    <th>Address line 1</th>
		                    <th>Address line 1</th>
                		</tr>
	           			<c:forEach items="${value}" var="user"> 
		           		<tr>
				    	 	<td><c:out value="${user.getFname()}" /></td>
				    	 	<td><c:out value="${user.getLname()}" /></td>
				    	 	<td><c:out value="${user.getEmail()}" /></td>
				    	 	<td><c:out value="${user.getPhoneNo()}" /></td>
				    	 	<td><c:out value="${user.getAddress1()}" /></td>
				    	 	<td><c:out value="${user.getAddress2()}" /></td>
				    	 	<td>
				    	 		<form action="deleteuser" method="post">
				    	 			<button type = "submit" name="id" value="${user.getId()}">Delete User</button>
				    	 		</form>
				    	 	<td>
			    	 	</tr>
	    				</c:forEach>
                    </table>
                   <!--<h3>Staff</h3>
                    <table id="table" border="1" width="100%">
                        <tr>
                            <td>
                                Staff Detials
                            </td>
                            <td>
                                Action
                            </td>
                        </tr>
                    </table>-->
            </div>
        </div>
        <br>
        <br>
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
</html>