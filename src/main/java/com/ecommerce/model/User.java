package com.ecommerce.model;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String joinDate;
	
	public User() {}

	public User(int id, String name, String email, String password, String joinDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.joinDate = joinDate;
	}
	
	public User(String name, String email, String password, String joinDate) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.joinDate = joinDate;
	}
	
	public User(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

}
