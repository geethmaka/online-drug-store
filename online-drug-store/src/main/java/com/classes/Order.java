package com.classes;

public class Order {
	private int orderID;
	private int quantity;
	private double totalPrice;
	private String location;
	private String status;
	
	public Order(int orderID, int quantity, double totalPrice,String location,String status) {
		this.orderID = orderID;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.location = location;
		this.status=status;
	}

	public int getOrderID() {
		return orderID;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}
	
	public String getLocation() {
		return location;
	}
	
	public String getStatus() {
		return status;
	}
}
