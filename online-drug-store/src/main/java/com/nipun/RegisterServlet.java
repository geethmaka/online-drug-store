package com.nipun;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Customer;
import com.common.DatabaseConnection;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/User/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		Customer customer = new Customer(); 
		
		customer.setFirstName(request.getParameter("fname"));
		customer.setLastName(request.getParameter("lname"));
		customer.setEmail(request.getParameter("email"));
		customer.setPhoenNo(request.getParameter("pno"));
		customer.setPassword(request.getParameter("pwd"));
		customer.setAddressLine1(request.getParameter("address1"));
		customer.setAddressLine2(request.getParameter("address2"));
		customer.setAddressLine1(getServletInfo())
	}

}
