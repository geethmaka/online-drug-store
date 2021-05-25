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
		
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "update item set name='"+request.getParameter("productname")+"',quantity="+request.getParameter("productquantity")+",unitPrice="+request.getParameter("productprice")+" where itemId="+request.getParameter("id");
			
			int rows=stmt.executeUpdate(command);
			
			
			Item[] data=dbc.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
