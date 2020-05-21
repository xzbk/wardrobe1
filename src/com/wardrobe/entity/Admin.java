package com.wardrobe.entity;

import java.util.Map;

public class Admin {

	private int id;
	private String name;
	private String password;
	private AdminType type;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AdminType getType() {
		return type;
	}

	public void setType(AdminType type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + "]";
	}

}
