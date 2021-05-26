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
		
		try {
			
			Statement stmt = dbc.getConnection().createStatement();
			if (request.getParameter("change_un").equals("on")||request.getParameter("change_pwd").equals("on")) {
				response.getWriter().append("36");
//				if(request.getParameter("change_un").equals("on")) {
//					String command1 = "UPDATE customer SET firstName = '" + request.getParameter("fname") + "', lastName ='" + request.getParameter("lname") + "' where customerID =" + request.getSession().getAttribute("CustomerID");
//					int rows1 = stmt.executeUpdate(command1);
//				
//					response.sendRedirect("../login.jsp");
//				}
			}
			else {
				response.getWriter().append("51");
			}
		}catch (Exception e){	
			//response.getWriter().append(e);
		}
		
	}

}
