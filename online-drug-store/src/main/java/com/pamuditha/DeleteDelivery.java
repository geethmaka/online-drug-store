package com.pamuditha;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

import com.classes.Delivery;


@WebServlet("/delivery/deletedelivery")
public class DeleteDelivery extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteDelivery() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append(request.getParameter("id"));
		DatabaseConnection dbc = new DatabaseConnection();
		int orderID=0;
		
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "delete from delivery where deliveryID=" + request.getParameter("id");
			String getOrderId = "select orderID from delivery where deliveryID=" + request.getParameter("id");
			
			ResultSet rs=stmt.executeQuery(getOrderId);
			while(rs.next()) {
				orderID=rs.getInt(1);
			}
			
			String deleteOrder = "delete from orders where orderID=" + orderID;
			int rows=stmt.executeUpdate(command);
			int rowss=stmt.executeUpdate(deleteOrder);
			
			
			Delivery[] data=dbc.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
