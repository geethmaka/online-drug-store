package com.common;

public class User {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private int phoneNo;
	private String password;
	private String address1;
	private String address2;
	private String city;
	
	public User(int id,String fname,String lname,String email,int phoneNo,String password,String address1,String address2,String city) {
		this.id=id;
		this.fname=fname;
		this.lname=lname;
		this.email=email;
		this.phoneNo=phoneNo;
		this.password=password;
		this.address1=address1;
		this.address2=address2;
		this.city=city;
	}
	
	public User(String email,String password) {
		this.email=email;
		this.password=password;
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

	public String getAddress1() {
		return address1;
	}

	public String getAddress2() {
		return address2;
	}

	public String getCity() {
		return city;
	}
}
