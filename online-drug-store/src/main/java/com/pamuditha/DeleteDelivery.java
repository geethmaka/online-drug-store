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
		
		boolean deleteDel = dbc.deleteDelivery(request.getParameter("id"));
		
		
	}

}
