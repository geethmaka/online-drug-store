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
		
		
		boolean updateDelivery = dbc.updateDelivery(request.getParameter("status"), request.getParameter("id"));
		
		if(updateDelivery) {
			Delivery[] data=dbc.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		}
	}

}
