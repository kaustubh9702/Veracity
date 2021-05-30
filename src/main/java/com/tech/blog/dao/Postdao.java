package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.tech.blog.entities.category;
import com.tech.blog.entities.post;
import com.tech.blog.entities.type;
import com.tech.blog.entities.user;

public class Postdao {
	
	Connection con;

	public Postdao(Connection con) {
		super();
		this.con = con;
	}
	
	public ArrayList<category> getCategories(){

		
		ArrayList<category> list = new ArrayList<category>();
		
		try {
			
			String q = "select * from categories";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(q);
			
			while(rs.next()) {
				
				int id = rs.getInt("Pcat");
				String name = rs.getString("name");
				String des = rs.getString("description");
				
				category c = new category(des, id,name);
				
				list.add(c);
				
				
			}
			
			
			
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
public ArrayList<type> getType(){

		
		ArrayList<type> list = new ArrayList<type>();
		
		try {
			
			String q = "select * from type";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(q);
			
			while(rs.next()) {
				
				int id = rs.getInt("tid");
				String name = rs.getString("type");
			
				
				type t = new type(id,name);
				
				list.add(t);
				
				
			}
			
			
			
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	
	public boolean newpost(post p) {
		boolean b = false;
		try {
		String q ="insert into post(Pcat,Ptitle,Pcontent,userId) values(?,?,?,?)";
		
		PreparedStatement st = con.prepareStatement(q);
		st.setInt(1, p.getPcat());
		st.setString(2, p.getPtitle());
		st.setString(3, p.getPcontent());
		st.setString(4, p.getUserid());
		
		st.executeUpdate();
		
		b=true;
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return b;
		
	}
	

	
	public List<post> getpost(){
		
		List<post> list = new ArrayList<post> ();
		try {
		String q = "select * from post order by Pid desc";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(q);
		
		while(rs.next()) {
			
			int pid = rs.getInt("Pid");
			String title = rs.getString("Ptitle");
			String content = rs.getString("Pcontent");
			Timestamp t = rs.getTimestamp("Pdate");
			int catid = rs.getInt("Pcat");
			
			String userid = rs.getString("userId");  
			
			post p = new post(pid, catid, title, content, null, t, userid);
			
			list.add(p);
			
		}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public ArrayList<post> getpostCategory(int catid){
		
		
		ArrayList<post> list = new ArrayList<post>();
		
		
		try {
			String q = "select * from post where Pcat = ?";
			PreparedStatement st = con.prepareStatement(q);
			st.setInt(1, catid);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				
				int pid = rs.getInt("Pid");
				String title = rs.getString("Ptitle");
				String content = rs.getString("Pcontent");
				Timestamp t = rs.getTimestamp("Pdate");
				
				String userid = rs.getString("userId");  
				
				post p = new post(pid, catid, title, content, null, t, userid);
				
				list.add(p);
				
			}
			
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		return list;
	}
	
	public ArrayList<user> getUsername(String userid) {
		
		ArrayList<user> list = new ArrayList<user>();
		
		try {
			String q = "select * from user where email = ?";
			PreparedStatement st = con.prepareStatement(q);
			st.setString(1, userid);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				
				String name = rs.getString("name");
				String about = rs.getString("about");
				
				user obj = new user(name, null, null, about);
				
				list.add(obj);
				
				
			}
			}	catch(Exception e ) {
				e.printStackTrace();
			}
		
		return list;
	}
	
}

