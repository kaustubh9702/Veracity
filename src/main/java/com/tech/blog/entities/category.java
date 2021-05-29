package com.tech.blog.entities;

public class category {
	
	private String description;
	private int cid;
	private String name;
	
	 
	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public category(String description, String name) {
		super();
		this.description = description;
		this.name = name;
	}


	public category(String description, int cid, String name) {
		super();
		this.description = description;
		this.cid = cid;
		this.name = name;
	}

}
