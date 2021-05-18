package com.common;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

//import java.sql.*;
//import java.util.*;
//
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Customer;
import com.classes.Delivery;
import com.classes.Item;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			DatabaseConnection dbc = new DatabaseConnection();
			Staff[] staffData=dbc.getStaffdetails();
			Delivery[] DeliveryData=dbc.getDeliveryDetails();
			Customer[] CustomerData=dbc.getCustomerDetails();
			Item[] ItemData=dbc.getItemDetails();
			
			for(int i=0;i<CustomerData.length;i++) {
				if((CustomerData[i].getEmail().equals(request.getParameter("email")))&&(CustomerData[i].getPassword().equals(request.getParameter("password")))) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
					request.getSession().setAttribute("CustomerID",CustomerData[i].getCustomerID());
					request.getSession().setAttribute("Logged","User");
					dispatcher.forward(request, response);
					break;
				}
			}
			
			for(int i=0;i<staffData.length;i++) {
				if((staffData[i].getEmail().equals(request.getParameter("email")))&&(staffData[i].getPassword().equals(request.getParameter("password")))) {
					if(staffData[i].getStaff().equals("Admin")) {
						request.getSession().setAttribute("Logged","Admin");
						request.getSession().setAttribute("data",staffData);
						response.sendRedirect("admin/index.jsp");
					}
					else if(staffData[i].getStaff().equals("Delivery")) {
						request.getSession().setAttribute("Logged","Delivery");
						request.getSession().setAttribute("data",DeliveryData);
						response.sendRedirect("delivery/index.jsp");
					}
					else if(staffData[i].getStaff().equals("Stock")) {
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/stock/index.jsp");
						request.getSession().setAttribute("Logged","Stock");
						request.getSession().setAttribute("data",ItemData);
						request.setAttribute("value", ItemData);
						dispatcher.forward(request, response);
					}
					break;
				}
			}
	
		}
}
