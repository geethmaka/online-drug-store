package com.geethmaka;

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
import com.common.User;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/updateuser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		List<User> ll = new LinkedList<User>();
		try {
			Statement stmt=dbc.getConnection().createStatement();
			
			String command = "UPDATE customer SET firstName = '"+request.getParameter("fname")+"',lastName = '"+request.getParameter("lname")+"',email = '"+request.getParameter("email")+"',phoneNo='"+request.getParameter("phone")+"',addressLine1 ='"+ request.getParameter("address1")+"',addressLine2 ='"+ request.getParameter("fname")+"',city ='"+ request.getParameter("city")+"' WHERE customerID ="+ request.getParameter("id");
			int rows=stmt.executeUpdate(command);
			
			ResultSet rs=stmt.executeQuery("select * from customer");
			while(rs.next()) {
				User n=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
				ll.add(n);
			}
			
			 User[] array = ll.toArray(new User[ll.size()]);

			 array = Arrays.copyOf(array, array.length + 1);
			 array[array.length - 1] = (User) request.getAttribute("user");
			 
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.jsp");
			request.setAttribute("value", array);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
