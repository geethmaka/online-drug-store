package com.nipun;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/forgetPassword1")
public class forgetPassword1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public forgetPassword1() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			String command = "select customerID from Customer where email = '" + request.getParameter("email") + "' and phoneNo = '" + request.getParameter("telno") + "'";
			ResultSet rs = stmt.executeQuery(command);
			
			if(!rs.next()) {//finding a row with matching customerID
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/forgot_password1.jsp");
				request.setAttribute("message", "Incorrect User Account Details");
				dispatcher.forward(request, response);
			}
			else {//go to the next row checking the data
				int customerID = rs.getInt(1);
				request.getSession().setAttribute("CustomerID", customerID);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/forgot_password2.jsp");//redirect to forgot_password2 page
				dispatcher.forward(request, response);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
