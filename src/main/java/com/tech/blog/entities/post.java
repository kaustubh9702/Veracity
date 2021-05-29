package com.tech.blog.entities;

import java.sql.Timestamp;

public class post {
	
	private int pid;
	private int pcat;
	private String ptitle;
	private String pcontent;
	private String pcode;
	private Timestamp pdate;
	private String userid;
	
	public post(int pcat, String ptitle, String pcontent, String pcode, Timestamp pdate, String userid) {
		super();
		this.pcat = pcat;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
		this.pdate = pdate;
		this.userid = userid;
	}
	public post(int pid, int pcat, String ptitle, String pcontent, String pcode, Timestamp pdate,String userid) {
		super();
		this.pid = pid;
		this.pcat = pcat;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
		this.pdate = pdate;
		this.userid = userid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPcat() {
		return pcat;
	}
	public void setPcat(int pcat) {
		this.pcat = pcat;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public Timestamp getPdate() {
		return pdate;
	}
	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}
}
