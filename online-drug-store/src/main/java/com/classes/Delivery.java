package com.classes;

public class Delivery {
	private int deliveryId;
	private int orderId;
	private int itemId;
	private String fname;
	private int quantity;
	private String location;
	private String status;
	
	public Delivery(int deliveryId, int orderId,int itemId,String fname,int quantity,String location,String status) {
		this.deliveryId = deliveryId;
		this.orderId=orderId;
		this.itemId=itemId;
		this.fname=fname;
		this.quantity=quantity;
		this.status = status;
		this.location=location;
	}

	public int getOrderId() {
		return orderId;
	}

	public int getItemId() {
		return itemId;
	}

	public String getFname() {
		return fname;
	}

	public int getQuantity() {
		return quantity;
	}

	public int getDeliveryId() {
		return deliveryId;
	}

	public String getStatus() {
		return status;
	}
	
	public int getorderId() {
		return orderId;
	}
	
	public String getLocation() {
		return location;
	}
}
