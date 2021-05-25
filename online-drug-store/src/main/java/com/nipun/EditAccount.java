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

@WebServlet("/User/EditAccount")
public class EditAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditAccount() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		String pw = null;
		
		response.getWriter().append(request.getParameter("change_pwd"));
		try {
			if (request.getParameter("change_un").equals("on")) {
				Statement stmt1 = dbc.getConnection().createStatement();
				String command1 = "UPDATE customer SET firstName = '" + request.getParameter("fname") + "', lastName ='" + request.getParameter("lname") + "' where customerID =" + request.getSession().getAttribute("CustomerID");
				int rows1 = stmt1.executeUpdate(command1);
			}
			else if (request.getParameter("change_pwd").equals("on")) {
			response.getWriter().append(request.getParameter("change_un"));}
//				Statement stmt2 = dbc.getConnection().createStatement();
//				String command2 = "Select password from customer where customerID = " + request.getSession().getAttribute("CustomerID");
//				ResultSet rs = stmt2.executeQuery(command2);
//			
//				while(rs.next()) {
//					pw=rs.getString(1);
//					response.getWriter().append(pw);
//				}
//				if(pw.equals(request.getParameter("oldpwd"))) {
//					if (request.getParameter("newpwd").equals(request.getParameter("reenterpwd"))) {
//						Statement stmt3 = dbc.getConnection().createStatement();
//						String command3 = "UPDATE customer SET password = '" + request.getParameter("newpwd") + "' where customerID =" + request.getSession().getAttribute("CustomerID");
//						response.getWriter().append(command3);
//						int rows3 = stmt3.executeUpdate(command3);
//					
//						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("login.jsp");
//						dispatcher.forward(request, response);
//					}
//					else {
//						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/EditAccount.jsp");
//						request.setAttribute("message1", "Password mismatch!!!");
//						dispatcher.forward(request, response);
//					}
//				}
//				else {
//					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/EditAccount.jsp");
//					request.setAttribute("message", "Please recheck the old Password!");
//					dispatcher.forward(request, response);	
//				}
//			}
		} catch (Exception e) {
//			//response.getWriter().append(e.toString());
		}
	}

}
