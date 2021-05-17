package com.geethmaka;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
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


@WebServlet("/admin/update-redirect")
public class UpdateRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateRedirect() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			DatabaseConnection dbc = new DatabaseConnection();
			Staff[] data=dbc.getStaffdetails();
			 
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/update-user-details.jsp");
			request.setAttribute("value", data);
			dispatcher.forward(request, response);
	}

}
