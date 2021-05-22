package com.pamuditha;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Delivery;
import com.common.DatabaseConnection;

@WebServlet("/delivery/updatedelivery")
public class UpdateDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateDelivery() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "update delivery set status='"+request.getParameter("status")+"' where deliveryID="+request.getParameter("id");
			
			int rows=stmt.executeUpdate(command);
			
			
			Delivery[] data=dbc.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
