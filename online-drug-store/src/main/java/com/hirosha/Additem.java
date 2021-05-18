package com.hirosha;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Item;
import com.common.DatabaseConnection;

@WebServlet("/stock/additem")
public class Additem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Additem() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbc = new DatabaseConnection();
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "insert into item(name,quantity,unitPrice) VALUES('"+request.getParameter("pname")+"',"+request.getParameter("quantity")+","+request.getParameter("price")+")";
			int rows=stmt.executeUpdate(command);

			Item[] data=dbc.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
