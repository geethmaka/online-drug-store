package com.geethmaka;

import java.io.IOException;
import java.sql.*;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.Staff;


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
		if(request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
			boolean addStaff=dbc.addStaff(request.getParameter("email"), request.getParameter("fname"), request.getParameter("lname"), Integer.parseInt(request.getParameter("number")), request.getParameter("pwd"), request.getParameter("type"));
			if(addStaff) {
				Staff[] data=dbc.getStaffdetails();
				request.getSession().setAttribute("data", data);
				response.sendRedirect("index.jsp");
			}
			else {
				RequestDispatcher redirect = getServletContext().getRequestDispatcher("/admin/add-staff.jsp");
				request.setAttribute("message", "Employee Already exists!!!");
				redirect.forward(request, response);
			}
		}else {
			RequestDispatcher redirect = getServletContext().getRequestDispatcher("/admin/add-staff.jsp");
			request.setAttribute("message", "Passwords do not match");
			redirect.forward(request, response);
		}
	}

}
