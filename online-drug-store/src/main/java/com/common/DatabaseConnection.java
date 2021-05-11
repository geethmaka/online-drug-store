package com.common;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;

public class DatabaseConnection {
	private Connection con;
	public DatabaseConnection() {
		
	}
	
	public Connection getConnection() {
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/online_drug_store","root","toor"); 
			}
		catch(Exception e){ } 
		return con;
	}
	
	public User[] getStaffdetails(String tableName) {
		List<User> ll = new LinkedList<User>();
		User[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			String command="select * from "+tableName;
			ResultSet rs=stmt.executeQuery(command);
			while(rs.next()) {
				User n=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
				ll.add(n);
			}
			
			array = ll.toArray(new User[ll.size()]);
			 
		} catch (Exception e) {
//			response.getWriter().append(e.toString());
		}
		return array;
	}
}
