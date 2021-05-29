package com.tech.blog.entities;

import java.sql.*;
import java.sql.Timestamp;

public class user {
	
	private String name;
	private String password;
	private String email;
	private Timestamp date;
	private int id;
	private String profile;
	private String type;
	

	

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public user(String name, String password, String email, String type) {
		
		this.name = name;
		this.password = password;
		this.email = email;
		this.type = type;
		
	
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public user() {
		
	}

	public user(String name, String password, String email, Timestamp date, int id) {
		
		this.name = name;
		this.password = password;
		this.email = email;
		this.date = date;
		this.id = id;
	}
	
	
	
	// getters and setters

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
	

}
