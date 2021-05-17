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

@WebServlet("/EditAccount")
public class EditAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditAccount() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append(request.getParameter("delete"));
		DatabaseConnection dbc = new DatabaseConnection();
		
		response.getWriter().append((CharSequence) request.getAttribute("chenge_pwd"));
		
//		try {
//			if(request.getAttribute("change_pwd")) {
//				
//			}
			
//			
//			Statement stmt=dbc.getConnection().createStatement();
//			String command = "delete from customer where customerID=" + request.getParameter("delete");
//			int rows=stmt.executeUpdate(command);
//			
//			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("login.jsp");
//			dispatcher.forward(request, response);
//		} catch (Exception e) {
//			response.getWriter().append(e.toString());
//		}
	}

}
