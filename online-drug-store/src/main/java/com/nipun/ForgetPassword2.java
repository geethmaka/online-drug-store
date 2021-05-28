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
public class ForgetPassword2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ForgetPassword2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		int customerID = (int) request.getSession().getAttribute("CustomerID");
		
			if(request.getParameter("password").equals(request.getParameter("confirmpassword"))) {
				
				boolean updatepw=dbc.updatePw(request.getParameter("password"), customerID);
				response.sendRedirect("../login.jsp");
			}
			else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/forgot_password2.jsp");
				request.setAttribute("message", "Password mismatch!!!");
				dispatcher.forward(request, response);
			}
			
	}
}
