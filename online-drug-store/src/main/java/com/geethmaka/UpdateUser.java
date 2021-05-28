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


/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/admin/updateuser")
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

		boolean updateStaff=dbc.updateStaff(request.getParameter("fname"), request.getParameter("lname"), request.getParameter("email"), request.getParameter("phone"),request.getParameter("password"),request.getParameter("staff"),request.getParameter("id"));
		
		if(updateStaff) {
			Staff[] data=dbc.getStaffdetails();
			request.getSession().setAttribute("data",data);
			response.sendRedirect("index.jsp");
		}
	}

}
