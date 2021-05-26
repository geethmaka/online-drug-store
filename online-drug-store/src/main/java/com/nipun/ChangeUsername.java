package com.nipun;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/changeUsername")
public class ChangeUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangeUsername() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			String command = "UPDATE customer SET firstName = '" + request.getParameter("fname") + "', lastName ='" + request.getParameter("lname") + "' where customerID =" + request.getSession().getAttribute("CustomerID");
			int rows = stmt.executeUpdate(command);
			
			request.getSession().removeAttribute("Logged");
			request.getSession().removeAttribute("CustomerID");
			request.getSession().removeAttribute("Customer");
			response.sendRedirect("../login.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
