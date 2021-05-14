package com.common;

public class Staff {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private int phoneNo;
	private String password;
	private String staff;
	
	public Staff(int id,String fname,String lname,String email,int phoneNo,String password,String staff) {
		this.id=id;
		this.fname=fname;
		this.lname=lname;
		this.email=email;
		this.phoneNo=phoneNo;
		this.password=password;
		this.staff=staff;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return email;
	}

	public int getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public String getStaff() {
		return staff;
	}
}

