package com.common;

import java.io.IOException;
//import java.sql.*;
//import java.util.*;
//
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Delivery;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("fff");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		Staff[] staffData=dbc.getStaffdetails();
		Delivery[] data=dbc.getDeliveryDetails();
		response.getWriter().append(Integer.toString(staffData.length));
		response.getWriter().append(Integer.toString(data.length));
		for(int i=0;i<staffData.length;i++) {
			if((staffData[i].getEmail().equals(request.getParameter("email")))&&(staffData[i].getPassword().equals(request.getParameter("password")))) {
				if(staffData[i].getStaff().equals("Admin")) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.jsp");
					request.setAttribute("value", staffData);
					dispatcher.forward(request, response);
				}
				else if(staffData[i].getStaff().equals("Delivery")) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/delivery/index.jsp");
					request.setAttribute("value", data);
					dispatcher.forward(request, response);
				}
				else if(staffData[i].getStaff().equals("Stock")) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/delivery/index.jsp");
					request.setAttribute("value", data);
					dispatcher.forward(request, response);
				}
				break;
			}
		}
		
	}

}
