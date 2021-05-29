package com.tech.blog.entities;

public class message {
	
private	String msg;
private String type;
private String csst;


public message(String msg, String type, String css) {
	super();
	this.msg = msg;
	this.type = type;	
	csst = css;
}

public String getCsst() {
	return csst;
}

public void setCsst(String csst) {
	this.csst = csst;
}

public String getMsg() {
	return msg;
}
public void setMsg(String msg) {
	this.msg = msg;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}



}
