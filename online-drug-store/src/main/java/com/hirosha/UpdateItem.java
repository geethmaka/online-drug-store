package com.hirosha;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.Staff;
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
			String command = "update item set name='"+request.getParameter("pname")+"',quantity="+request.getParameter("quantity")+",unitPrice="+request.getParameter("price")+" where itemId="+request.getParameter("id");
			int rows=stmt.executeUpdate(command);
			
			
			Item[] data=dbc.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
