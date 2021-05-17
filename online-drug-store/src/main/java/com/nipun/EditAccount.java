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
		int customerID = (int) request.getSession().getAttribute("CustomerID");
		
		try {
			if (request.getAttribute("delete").equals(null) && request.getAttribute("submit").equals("submit")) {
				if (request.getParameter("change_un").equals("on")) {
					Statement stmt1 = dbc.getConnection().createStatement();
					String command1 = "UPDATE customer SET fistName = '" + request.getParameter("lname") + "', lastName ='" + request.getParameter("fname") + "' where customerID =" + customerID;
					int rows1 = stmt1.executeUpdate(command1);
				}
				else if (request.getParameter("change_pwd").equals("on")) {
					Statement stmt2 = dbc.getConnection().createStatement();
					String command2 = "Select password from customer where customerID = " + customerID;
					ResultSet rs = stmt2.executeQuery(command2);
					
					if (!rs.next()) {
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/EditAccount.jsp");
						request.setAttribute("message", "Please recheck the old Password!");
						dispatcher.forward(request, response);
					}
					else {
						if (request.getParameter("newpwd").equals(request.getParameter("reenterpwd"))) {
							Statement stmt3 = dbc.getConnection().createStatement();
							String command3 = "UPDATE customer SET password = '" + request.getParameter("password") + "' where customerID =" + customerID;
							int rows3 = stmt3.executeUpdate(command3);
							
							RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("login.jsp");
							dispatcher.forward(request, response);
						}
						else {
							RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/EditAccount.jsp");
							request.setAttribute("message1", "Password mismatch!!!");
							dispatcher.forward(request, response);
						}
					}
				}
			}
			else if(request.getAttribute("submit").equals("submit") && request.getAttribute("delete").equals(null)) {
				Statement stmt5=dbc.getConnection().createStatement();
				String command5 = "delete from customer where customerID = " + customerID;
				int rows3 = stmt5.executeUpdate(command5);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
