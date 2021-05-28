package com.common;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Item;
import com.classes.OrderDetails;

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
		
		DatabaseConnection dbc = new DatabaseConnection();
		String url="item.jsp?id="+request.getParameter("itemID");
		Item[] data=dbc.getItemDetails();
		request.getSession().setAttribute("data", data);
		
		boolean buyItem=dbc.buyItem(Integer.parseInt(request.getParameter("itemID")),Integer.parseInt(request.getParameter("quantity")),Double.parseDouble(request.getParameter("price")),(int)request.getSession().getAttribute("CustomerID"));
		
		if(buyItem) {
			RequestDispatcher r=request.getRequestDispatcher(url);   
			request.setAttribute("message", "Purchase Successfull");
			r.forward(request, response);
		}else {
		RequestDispatcher r=request.getRequestDispatcher(url);   
		request.setAttribute("message", "Invalid Quantity");
		r.forward(request, response);}
		
	}

}
