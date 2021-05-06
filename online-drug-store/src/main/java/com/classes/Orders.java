package com.classes;

public class Orders {
	private int orderID;
	private int quantity;
	private double totalPrice;
	
	public Orders(int orderID, int quantity, double totalPrice) {
		this.orderID = orderID;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
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
	
	
}
