package com.common;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import com.classes.Customer;
import com.classes.Delivery;
import com.classes.Item;

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
	
	public Staff[] getStaffdetails() {
		List<Staff> ll = new LinkedList<Staff>();
		Staff[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery("select * from employee");
			while(rs.next()) {
				Staff n=new Staff(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7));
				ll.add(n);
			}
			
			array = ll.toArray(new Staff[ll.size()]);
			 
		} catch (Exception e) {
		}
		return array;
	}
	
	public Delivery[] getDeliveryDetails() {
		List<Delivery> ll = new LinkedList<Delivery>();
		Delivery[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			//create view customerOrders AS select orderID, firstName, itemID quantity, totalAmount,addressLine1, addressLine2, city, province from Customer c, Orders o  where c.customerID = o.customerID;
			ResultSet rs=stmt.executeQuery("select * from customerOrders");
			while(rs.next()) {
				Delivery n=new Delivery(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),rs.getInt(5),(rs.getString(6)+","+rs.getString(7)+","+rs.getString(7)+","+rs.getString(8)+","+rs.getString(9)),rs.getString(10));
				ll.add(n);
			}
			
			array = ll.toArray(new Delivery[ll.size()]);
			 
		} catch (Exception e) {
		}
		return array;
	}
	
	public Customer[] getCustomerDetails() {
		List<Customer> ll = new LinkedList<Customer>();
		Customer[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery("select * from customer");
			while(rs.next()) {
				Customer n=new Customer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
				ll.add(n);
			}
			
			array = ll.toArray(new Customer[ll.size()]);
			 
		} catch (Exception e) {
		}
		return array;
	}
	
	public Item[] getItemDetails() {
		List<Item> ll = new LinkedList<Item>();
		Item[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery("select * from item");
			while(rs.next()) {
				Item n=new Item(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getDouble(4));
				ll.add(n);
			}
			
			array = ll.toArray(new Item[ll.size()]);
			 
		} catch (Exception e) {
		}
		return array;
	}
	
	public Item fetchItem(int id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "select * from item where itemID="+id;
			ResultSet rs=stmt.executeQuery(command);
			while(rs.next()) {
				Item n=new Item(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getDouble(4));
				return n;
			}
			 
		} catch (Exception e) {
		}
		return null;
	}
	
	public Item[] getSearchDetails(String search) {
		List<Item> ll = new LinkedList<Item>();
		Item[] array = null;
		try {
			Statement stmt=this.getConnection().createStatement();
			String command= "SELECT * from item WHERE name LIKE '%"+search+"%'";
			ResultSet rs=stmt.executeQuery(command);
			while(rs.next()) {
				Item n=new Item(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getDouble(4));
				ll.add(n);
			}
			
			array = ll.toArray(new Item[ll.size()]);
			 
		} catch (Exception e) {
		}
		return array;
	}
}
