package com.nipun;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/forgetPassword2")
public class forgetPassword2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public forgetPassword2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		int customerID = (int) request.getSession().getAttribute("CustomerID");
		
		try {
			if(request.getParameter("password").equals(request.getParameter("confirmpassword"))) {
				Statement stmt = dbc.getConnection().createStatement();
				String command = "UPDATE customer SET password = '" + request.getParameter("password") + "' where customerID =" + customerID;
				int rows = stmt.executeUpdate(command);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
			else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/forgot_password2.jsp");
				request.setAttribute("message", "Password mismatch!!!");
				dispatcher.forward(request, response);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
