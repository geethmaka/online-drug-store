package com.geethmaka;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.User;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/updateuser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Access Denied!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();

		try {
			Statement stmt=dbc.getConnection().createStatement();
			
			String command = "UPDATE customer SET firstName = '"+request.getParameter("fname")+"',lastName = '"+request.getParameter("lname")+"',email = '"+request.getParameter("email")+"',phoneNo='"+request.getParameter("phone")+"',addressLine1 ='"+ request.getParameter("address1")+"',addressLine2 ='"+ request.getParameter("fname")+"',city ='"+ request.getParameter("city")+"' WHERE customerID ="+ request.getParameter("id");
			int rows=stmt.executeUpdate(command);
			

			User[] data=dbc.getStaffdetails();
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.jsp");
			request.setAttribute("value", data);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
