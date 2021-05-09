package com.common;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dbcon")
public class Dbcon extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Dbcon() {
        super();

    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
//		DatabaseConnection dbc = new DatabaseConnection();
//		List<User> ll = new LinkedList<User>();
//		try {
//			Statement stmt=dbc.getConnection().createStatement();
//			ResultSet rs=stmt.executeQuery("select * from customer");
//			while(rs.next()) {
//				User n=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
//				ll.add(n);
//			}
//			
//			 User[] array = ll.toArray(new User[ll.size()]);
//
//			 array = Arrays.copyOf(array, array.length + 1);
//			 array[array.length - 1] = (User) request.getAttribute("user");
//			 //response.getWriter().append("Served at: ").append(request.getContextPath()).append("<br>");
//			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/update-user-details.jsp");
//			request.setAttribute("value", array);
//			dispatcher.forward(request, response);
//		} catch (Exception e) {
//			response.getWriter().append(e.toString());
//		}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}


//response.getWriter().append("test");
//DatabaseConnection dbc = new DatabaseConnection();
//try {
//	Statement stmt=dbc.getConnection().createStatement();
//	ResultSet rs=stmt.executeQuery("select * from customer");
////	while(rs.next())
////	response.getWriter().append(rs.toString());
//	response.getWriter().append("test");
//	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/test.jsp");
//	request.setAttribute("value", rs.toString());
//	dispatcher.forward(request, response);
//} catch (Exception e) {
//	response.getWriter().append(e.toString());
//}

