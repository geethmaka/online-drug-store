package com.hirosha;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;

import com.classes.Item;

@WebServlet("/stock/updateitem")
public class UpdateItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateItem() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		
		boolean updateItem=dbc.updateItem(request.getParameter("productname"),request.getParameter("productquantity"),request.getParameter("productprice"),request.getParameter("id"));
		
		if(updateItem) {
			Item[] data=dbc.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		}
	}

}
