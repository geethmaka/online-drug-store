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

@WebServlet("/login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		if((request.getParameter("email").equals("admin"))&&(request.getParameter("password").equals("admin"))) {
			User[] data=dbc.getStaffdetails("customer");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.jsp");
			request.setAttribute("value", data);
			dispatcher.forward(request, response);
		}
		
		if((request.getParameter("email").equals("d"))&&(request.getParameter("password").equals("d"))) {
			User[] data=dbc.getStaffdetails("customer");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/delivery/index.jsp");
			request.setAttribute("value", data);
			dispatcher.forward(request, response);
		}
		
	}

}
