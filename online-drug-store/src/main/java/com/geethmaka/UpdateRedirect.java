package com.geethmaka;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
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


@WebServlet("/update-redirect")
public class UpdateRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateRedirect() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		List<User> ll = new LinkedList<User>();
		try {
			Statement stmt=dbc.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery("select * from customer");
			while(rs.next()) {
				User n=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
				ll.add(n);
			}
			
			User[] array = ll.toArray(new User[ll.size()]);
			 
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/update-user-details.jsp");
			request.setAttribute("value", array);
			dispatcher.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}

}
