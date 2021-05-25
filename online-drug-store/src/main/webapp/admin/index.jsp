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
<link rel="stylesheet" type="text/css" href="../css/table.css">
<link rel="stylesheet" href="../css/home.css">
</head>

<% if(request.getSession().getAttribute("Logged").equals("Admin")) {
	Staff[] data = (Staff[]) request.getSession().getAttribute("data");
%>
        <div class="topBar">
            <div style="padding-left: 20px;padding-top:30px;">
                <a href=""><img src="../img/cart.png" height="100" width="100"></a>
            </div>
            <div class="searchBar">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div style="float: right;">
            	<br><br>
                <a href="add-staff.jsp"><button>Add another employee</button></a>
                <a href="update-user-details.jsp"><button>Update Staff Details</button></a>
                <form action="../logout" method="post"><button type="submit">Logout</button></form>
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
		                    <th>Password</th>
		                    <th>Staff</th>
                		</tr>
	           			<c:forEach items="${data}" var="staff"> 
		           		<tr>
				    	 	<td><c:out value="${staff.getFname()}" /></td>
				    	 	<td><c:out value="${staff.getLname()}" /></td>
				    	 	<td><c:out value="${staff.getEmail()}" /></td>
				    	 	<td><c:out value="${staff.getPhoneNo()}" /></td>
				    	 	<td><c:out value="${staff.getPassword()}" /></td>
				    	 	<td><c:out value="${staff.getStaff()}" /></td>
				    	 	<td>
				    	 		<form action="deleteuser" method="post">
				    	 			<button type = "submit" name="id" value="${staff.getId()}">Delete User</button>
				    	 		</form>
				    	 	<td>
			    	 	</tr>
	    				</c:forEach>
                    </table>
            </div>
        </div>
        </div>
        </div>
        <br>
        <br>
        <div class="bottomBar">
            <div style="text-align: center;justify-content: center;align-content: center;align-items: center;">
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
 <%}else{ %>
 <p>blocked
 </body>
 <%} %>
</html>