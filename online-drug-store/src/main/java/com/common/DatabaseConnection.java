package com.common;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.classes.Customer;
import com.classes.Delivery;
import com.classes.Item;
import com.classes.OrderDetails;

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
			e.printStackTrace();
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
	
	public int getRemainingItems(int id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "select quantity from item where itemID="+id;
			ResultSet rs=stmt.executeQuery(command);
			while(rs.next()) {
				return rs.getInt(1);
			}
			 
		} catch (Exception e) {
		}
		return -1;
	}
	public OrderDetails[] getOrderDetails(int customerID) {
		List<OrderDetails> ll = new LinkedList<OrderDetails>();
		OrderDetails[] array = null;
		try {
			Statement stmt = this.getConnection().createStatement();
			ResultSet rs=stmt.executeQuery("select * from order_Details where customerID = " + customerID);
			while(rs.next()) {
				OrderDetails n = new OrderDetails(rs.getInt(1),rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getDouble(5),rs.getString(6));
				ll.add(n);
			}
			array = ll.toArray(new OrderDetails[ll.size()]);	 
		} catch (Exception e) {}
		
		return array;
	}
	
	
	public boolean buyItem(int itemID,int quantity,double price,int customerID) {
		int originalQuantity = this.getRemainingItems(itemID);
		int rows;
		int id = 0;
		if(quantity>originalQuantity) {
			return false;
		}
		else {
			int remainingItems=originalQuantity-quantity;
			try {
				Statement stmt=this.getConnection().createStatement();
				double tot=quantity*price;
				
				String command = "insert into orders(customerID,itemID,quantity,totalAmount) VALUES("+customerID+","+itemID+","+quantity+","+tot+")";
	
				PreparedStatement ps=this.getConnection().prepareStatement(command,Statement.RETURN_GENERATED_KEYS);
				
				ps.executeUpdate();
				ResultSet rs=ps.getGeneratedKeys();
				
				if(rs.next()){
					id=rs.getInt(1);
				}
				
				
				command= "insert into delivery(orderID,status) values("+id+",'pending')";
				rows=stmt.executeUpdate(command);
				
				command= "update item set quantity="+remainingItems+" where itemID="+itemID;
				rows=stmt.executeUpdate(command);
				
				return true;
			} catch(Exception e) {
				e.printStackTrace();
				return false;
			}
		}
	}
	
	public boolean addStaff(String email,String fname,String lname,int number,String pwd,String type) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "select * from employee where email='"+email+"'";
			ResultSet rs=stmt.executeQuery(command);
			if(!rs.next()) {
				command = "insert into employee(firstName,lastName,email,phoneNo,password,Staff) VALUES('"+fname+"','"+lname+"','"+email+"','"+number+"','"+pwd+"','"+type+"')";
				int rows=stmt.executeUpdate(command);
				return true;
			}else {
				return false;
			}
			
	public boolean addItem(String pname, String qty, String price) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "insert into item(name,quantity,unitPrice) VALUES('" +pname+"',"+ qty +","+price+")";
			int rows=stmt.executeUpdate(command);

			Item[] data=this.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteStaff(String id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "delete from employee where employeeID=" + id;
			int rows=stmt.executeUpdate(command);
			
			return true;
		
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean updateStaff(String fname,String lname,String email,String number,String pwd,String staff,String id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			
			String command = "UPDATE employee SET firstName = '"+fname+"',lastName = '"+lname+"',email = '"+email+"',phoneNo='"+number+"',password ='"+ pwd+"',Staff ='"+ staff+"' WHERE employeeID ="+ id;
			int rows=stmt.executeUpdate(command);
			
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean changeUsername(String fname,String lname,String id) {
		try {
			Statement stmt = this.getConnection().createStatement();
			String command = "UPDATE customer SET firstName = '" + fname + "', lastName ='" + lname+ "' where customerID =" + id;
			int rows = stmt.executeUpdate(command);
			return true;
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean changePassword(int id,String oldpwd,String newpwd) {
		String pwd=null;
		try {
			Statement stmt = this.getConnection().createStatement();
			String command = "Select password from customer where customerID=" + id;
			ResultSet rs = stmt.executeQuery(command);
			
			while(rs.next()) {
				pwd = rs.getString(1);
			}
			
			if(oldpwd.equals(pwd)) {
					String command1 = "UPDATE customer SET password = '" + newpwd + "' where customerID =" + id;
					stmt.executeUpdate(command1);
					return true;
			}else {
				return false;
			}
		}
		catch (SQLException e) {
			return false;
		}
	}
	
	public boolean deleteAccount(int id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "delete from customer where customerID=" + id;
			int rows=stmt.executeUpdate(command);
			
			return true;
		} catch (Exception e) {
			return false;
		
		return true;
	}
	
	
	public boolean deleteItem(String id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "delete from item where itemID=" + id;
			int rows=stmt.executeUpdate(command);
			
			
			Item[] data=this.getItemDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}
	
	public boolean deleteDelivery(String id) {
		int orderID=0;
		
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "delete from delivery where deliveryID=" + id;
			String getOrderId = "select orderID from delivery where deliveryID=" + id;
			
			ResultSet rs=stmt.executeQuery(getOrderId);
			while(rs.next()) {
				orderID=rs.getInt(1);
			}
			
			String deleteOrder = "delete from orders where orderID=" + orderID;
			int rows=stmt.executeUpdate(command);
			int rowss=stmt.executeUpdate(deleteOrder);
			
			
			Delivery[] data=this.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}
	
	public boolean placeOrder(String itemId, String qty, String price) {
		int id = 0;
		int originalQuantity = this.getRemainingItems(Integer.parseInt(itemId));
		
		try {
			int tot=Integer.parseInt(qty)*Integer.parseInt(price);
			int remainingItems=originalQuantity-Integer.parseInt(qty);
			Statement stmt=this.getConnection().createStatement();
			String command = "insert into orders(customerID,itemID,quantity,totalAmount) VALUES(1"+","+itemId+","+qty+","+tot+")";
			PreparedStatement ps=this.getConnection().prepareStatement(command,Statement.RETURN_GENERATED_KEYS);
			
			ps.executeUpdate();
			ResultSet rs=ps.getGeneratedKeys();
			
			if(rs.next()){
				id=rs.getInt(1);
			}
			
			command= "insert into delivery(orderID,status) values("+id+",'pending')";
			int rows=stmt.executeUpdate(command);
			
			command= "update item set quantity="+remainingItems+" where itemID="+Integer.parseInt(itemId);
			rows=stmt.executeUpdate(command);
			
			Delivery[] data=this.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			request.getSession().removeAttribute("items");
			Item[] items=this.getItemDetails();
			request.getSession().setAttribute("items", items);
			response.sendRedirect("index.jsp");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean updateDelivery(String status, String id) {
		try {
			Statement stmt=this.getConnection().createStatement();
			String command = "update delivery set status='"+status+"' where deliveryID="+id;
			
			int rows=stmt.executeUpdate(command);
			
			
			Delivery[] data=this.getDeliveryDetails();
			request.getSession().setAttribute("data", data);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			response.getWriter().append(e.toString());
		}
	}
}
