package com.classes;

public class Item {
	private int itemID;
	private String name;
	private int quantity;
	private double unitPrice;
	
	public Item(int itemID, String name, int quantity, double unitPrice) {
		this.itemID = itemID;
		this.name = name;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
	}

	public int getItemID() {
		return itemID;
	}

	public String getName() {
		return name;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}
	
}
