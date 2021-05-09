package com.classes;

public class Customer {
	private int customerID;
	private String firstName;
	private String lastName;
	private String email;
	private String phoenNo;
	private String password;
	private String addressLine1;
	private String addressLine2;
	private String city;
	private String province;
	
	public Customer(int customerID, String firstName, String lastName,String email, String phoneNo, String password, String addressLine1, String addressLine2, String city, String province) {
		this.customerID = customerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoenNo = phoneNo;
		this.password = password;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.city = city;
		this.province = province;
	}

	public int getCustomerID() {
		return customerID;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoenNo() {
		return phoenNo;
	}

	public String getPassword() {
		return password;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public String getCity() {
		return city;
	}

	public String getProvince() {
		return province;
	}
	
}
