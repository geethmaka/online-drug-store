package com.geethmaka;

import java.io.IOException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.Staff;


@WebServlet("/user/deleteuser")
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
			
			Staff[] data=dbc.getStaffdetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
		
	}
		
}
