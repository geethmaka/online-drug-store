package com.classes;

public class Delivery {
	private String status;
	private int deliveryId;
	private int orderId;
	
	public Delivery(int deliveryId, int orderId,String status) {
		this.deliveryId = deliveryId;
		this.orderId=orderId;
		this.status = status;
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
}
