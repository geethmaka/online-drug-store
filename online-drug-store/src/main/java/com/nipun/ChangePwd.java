package com.nipun;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/changePwd")
public class ChangePwd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangePwd() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		int customerID = (int) request.getSession().getAttribute("CustomerID");
		
		if(request.getParameter("newpwd").equals(request.getParameter("reenterpwd"))) {
		boolean changePassword=dbc.changePassword(customerID, request.getParameter("oldpwd"), request.getParameter("newpwd"));
		if(changePassword) {
			request.getSession().removeAttribute("Logged");
			request.getSession().removeAttribute("CustomerID");
			request.getSession().removeAttribute("Customer");
			response.sendRedirect("../login.jsp");
		}else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/edit_cAccount.jsp");
			request.setAttribute("message2", "The password does not match with the old");
			dispatcher.forward(request, response);
		}}
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/edit_cAccount.jsp");
			request.setAttribute("message1", "Password mismatch!!!");
			dispatcher.forward(request, response);
		}
		}
	}

