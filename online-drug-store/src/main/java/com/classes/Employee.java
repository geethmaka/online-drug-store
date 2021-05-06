package com.classes;

public class Employee {
	private int employeeID;
	private String firstName;
	private String lastName;
	private String email;
	private String phoneNo;
	private String password;
	private String Staff;
	
	public Employee(int employeeID, String firstName, String lastName, String email, String phoneNo, String password, String Staff) {
		this.employeeID = employeeID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.Staff = Staff;
	}

	public int getEmployeeID() {
		return employeeID;
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

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public String getStaff() {
		return Staff;
	}
	
}
