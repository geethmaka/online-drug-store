package com.nipun;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/deleteAccount")
public class DeleteAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteAccount() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		boolean deleteAccount= dbc.deleteAccount((int)request.getSession().getAttribute("CustomerID"));
		
		if(deleteAccount) {
			request.getSession().removeAttribute("Logged");
			request.getSession().removeAttribute("CustomerID");
			request.getSession().removeAttribute("Customer");
	    	response.sendRedirect("../login.jsp");
		}
	}

}
