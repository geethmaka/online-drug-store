package com.classes;

public class OrderDetails {
	private int customerID;
	private  int orderID;
	private String name;
	private int quantity;
	private double total;
	private String status;
	
	public OrderDetails(int customerID, int orderID, String name, int quantity, double total, String status) {
		this.customerID = customerID;
		this.orderID = orderID;
		this.name = name;
		this.quantity = quantity;
		this.total = total;
		this.status = status;
	}

	public int customerID() {
		return customerID;
	}
	
	public int getOrderID() {
		return orderID;
	}

	public String getName() {
		return name;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTotal() {
		return total;
	}

	public String getStatus() {
		return status;
	}
}
