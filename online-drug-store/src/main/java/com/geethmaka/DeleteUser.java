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
import com.common.Staff;
import com.common.User;

@WebServlet("/admin/deleteuser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteUser() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "delete from employee where employeeID=" + request.getParameter("id");

			int rows=stmt.executeUpdate(command);
				Staff[] staffData=dbc.getStaffdetails();
				request.getSession().setAttribute("Logged","Admin");
				request.getSession().setAttribute("data",staffData);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.jsp");
				dispatcher.forward(request, response);

		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
		
	}
		
}
