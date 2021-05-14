package com.nipun;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Customer;
import com.common.DatabaseConnection;

@WebServlet("/User/Register1Servlet")
public class Register1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register1Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = new Customer();
		
		customer.setFirstName(request.getParameter("fname"));
		customer.setLastName(request.getParameter("lname"));
		customer.setEmail(request.getParameter("email"));
		customer.setPhoenNo(request.getParameter("pno"));
		customer.setPassword(request.getParameter("pwd"));
		
		if(request.getParameter("pwd").equals(request.getParameter("rpwd"))) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/Registration2.jsp");
			request.getSession().setAttribute("CustomerObj",customer);
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/User/Registration1.jsp");
			request.setAttribute("message", "Password mismatch!!!");
			dispatcher.forward(request, response);
		}
	}
}