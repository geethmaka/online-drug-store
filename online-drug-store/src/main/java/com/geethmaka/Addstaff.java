package com.geethmaka;

import java.io.IOException;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.DatabaseConnection;
import com.common.User;

/**
 * Servlet implementation class Addstaff
 */
@WebServlet("/admin/addstaff")
public class Addstaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addstaff() {
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
		try {
			Statement stmt=dbc.getConnection().createStatement();
			String command = "insert into employee(firstName,lastName,email,phoneNo,password,Staff) VALUES('"+request.getParameter("fname")+"','"+request.getParameter("lname")+"','"+request.getParameter("email")+"','"+request.getParameter("number")+"','"+request.getParameter("pwd")+"','"+request.getParameter("type")+"')";
			int rows=stmt.executeUpdate(command);	
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
