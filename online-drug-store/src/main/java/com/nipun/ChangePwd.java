package com.nipun;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

@WebServlet("/User/changePwd")
public class ChangePwd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangePwd() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		int customerID = (int) request.getSession().getAttribute("CustomerID");
		String pwd = null;
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			String command = "Select password from customer where customerID=" + customerID;
			ResultSet rs = stmt.executeQuery(command);
			
			while(rs.next()) {
				pwd = rs.getString(1);
			}
			
			if(request.getParameter("oldpwd").equals(pwd)) {
				if(request.getParameter("newpwd").equals(request.getParameter("reenterpwd"))) {
					String command1 = "UPDATE customer SET password = '" + request.getParameter("newpwd") + "' where customerID =" + customerID;
					stmt.executeUpdate(command1);
					request.getSession().removeAttribute("Logged");
					request.getSession().removeAttribute("CustomerID");
					request.getSession().removeAttribute("Customer");
					response.sendRedirect("../login.jsp");
				}
				else {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/edit_cAccount.jsp");
					request.setAttribute("message1", "Password mismatch!!!");
					dispatcher.forward(request, response);
				}
			}else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/edit_cAccount.jsp");
				request.setAttribute("message2", "The password does not match with the old");
				dispatcher.forward(request, response);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
