package com.common;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Customer;
import com.classes.Delivery;
import com.classes.Item;

@WebServlet("/buyitem")
public class BuyItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BuyItem() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		DatabaseConnection dbc = new DatabaseConnection();
		try {
			Statement stmt=dbc.getConnection().createStatement();
			double tot=Integer.parseInt(request.getParameter("quantity"))*Double.parseDouble(request.getParameter("price"));
			
			String command = "insert into orders(customerID,itemID,quantity,totalAmount) VALUES("+request.getSession().getAttribute("CustomerID")+","+request.getParameter("itemID")+","+request.getParameter("quantity")+","+tot+")";

			PreparedStatement ps=dbc.getConnection().prepareStatement(command,Statement.RETURN_GENERATED_KEYS);
			
			ps.executeUpdate();
			ResultSet rs=ps.getGeneratedKeys();
			
			if(rs.next()){
				id=rs.getInt(1);
			}
			
			command= "insert into delivery(orderID,status) values("+id+",'pending')";
			int rows=stmt.executeUpdate(command);
			
			Item[] data=dbc.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
