package com.classes;

public class Delivery {
	private int deliveryID;
	private String status;
	
	public Delivery(int deliveryID, String status) {
		this.deliveryID = deliveryID;
		this.status = status;
	}

	public int getDeliveryID() {
		return deliveryID;
	}

	public String getStatus() {
		return status;
	}
	
}
