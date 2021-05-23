package com.geethmaka;

import java.io.IOException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.Staff;
import com.common.User;

@WebServlet("/admin/addstaff")
public class Addstaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Addstaff() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "select * from employee where email='"+request.getParameter("email")+"'";
			ResultSet rs=stmt.executeQuery(command);
			if(!rs.next()) {
				command = "insert into employee(firstName,lastName,email,phoneNo,password,Staff) VALUES('"+request.getParameter("fname")+"','"+request.getParameter("lname")+"','"+request.getParameter("email")+"','"+request.getParameter("number")+"','"+request.getParameter("pwd")+"','"+request.getParameter("type")+"')";
				int rows=stmt.executeUpdate(command);
				Staff[] data=dbc.getStaffdetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("index.jsp");
			}else {
				RequestDispatcher redirect = getServletContext().getRequestDispatcher("/admin/add-staff.jsp");
				request.setAttribute("message", "Employee Already exists!!!");
				redirect.forward(request, response);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
