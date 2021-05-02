package home;

import java.io.IOException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.sql.*;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Home() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

	      // variables
	      final String url = "jdbc:http://localhost/phpmyadmin/";
	      final String user = "root";
	      final String password = "";

	      // establish the connection
	      Connection con;
		try {
			con = DriverManager.getConnection(url, user, password);
		      // display status message
		      if (con == null) {
		    	  response.getWriter().append("null");
		         return;
		      } else
		    	  response.getWriter().append("Congratulations," + 
		              " JDBC connection is established successfully.\n");

		      // close JDBC connection
		      con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.getWriter().append(e.toString());
		}




	}

}
