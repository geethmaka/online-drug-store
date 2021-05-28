package com.pamuditha;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Delivery;
import com.classes.Item;
import com.common.DatabaseConnection;



@WebServlet("/delivery/placeorder")
public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceOrder() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		
		boolean placeOd = dbc.placeOrder(request.getParameter("itemID"), request.getParameter("quantity"), request.getParameter("quantity"));
		
		if(placeOd) {
			Delivery[] data=dbc.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			request.getSession().removeAttribute("items");
			Item[] items=dbc.getItemDetails();
			request.getSession().setAttribute("items", items);
			response.sendRedirect("index.jsp");
		}
	}

}
