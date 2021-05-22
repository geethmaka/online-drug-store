package com.nipun;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Customer;
import com.common.DatabaseConnection;

@WebServlet("/User/Register2Servlet")
public class Register2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register2Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		Customer customer = (Customer) request.getSession().getAttribute("CustomerObj");
		
		customer.setAddressLine1(request.getParameter("address1"));
		customer.setAddressLine2(request.getParameter("address2"));
		customer.setCity(request.getParameter("city"));
		customer.setProvince(request.getParameter("state"));
		
		try {
			Statement stmt = dbc.getConnection().createStatement();
			String command = "insert into customer(firstName,lastName,email,phoneNo,password,addressLine1,addressLine2,city,province)"
					+ "VALUES('" + customer.getFirstName() + "','" + customer.getLastName() + "','" + customer.getEmail() + "','" + customer.getPhoenNo() + "','" + customer.getPassword() + "','" + customer.getAddressLine1() + "','" + customer.getAddressLine2() + "','" + customer.getCity() + "','" + customer.getProvince() + "')";
			stmt.executeUpdate(command);
			
			response.sendRedirect("../login.jsp");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
