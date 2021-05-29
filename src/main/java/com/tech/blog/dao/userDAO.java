package com.tech.blog.dao;
import java.sql.*;


import com.tech.blog.entities.user;




public class userDAO {
	
	private Connection con;

	public userDAO(Connection con) {

		this.con = con;
	}
	
	public boolean InsertUser(user obj) {
		boolean f = false;
		try {
			String q = "insert into user(name, email,password,about) values (?,?,?,?)";
			PreparedStatement st = con.prepareStatement(q);
			st.setString(1, obj.getName());
			st.setString(2, obj.getEmail());
			st.setString(3, obj.getPassword());
			st.setString(4, obj.getType());
			
			
			st.executeUpdate();
			f = true;
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	//get user credentials
	
	public user getUserCredentials(String email, String password) {
		
		user obj = null;
		try {
			
			
			String q = "select * from user where email = ? and password = ?";
			PreparedStatement st = con.prepareStatement(q);
			
			st.setString(1, email);

			st.setString(2, password);
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				
				obj = new user();
				
				String name = rs.getString("name");
				
				String pass = rs.getString("password");
				
				String type = rs.getString("about");
				
				int id = rs.getInt("id");
				
				obj.setId(id);
				
				obj.setName(name);
				
				obj.setEmail(rs.getString("email"));
				
				obj.setDate(rs.getTimestamp("rdate"));
				
				obj.setProfile(pass);
				
				obj.setType(type);
				
				obj.setPassword(rs.getString("password"));
				
			}
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		

		return obj;
	}
	
	public boolean UpdateDetails(user obj) {
		
		boolean b = false;
		
		try {
			
			String q = "update user set name = ?, email = ? , password = ? , about = ?  where id = ?";
			
			PreparedStatement st = con.prepareStatement(q);
			
			

			st.setString(1, obj.getName());
			
			st.setString(2, obj.getEmail());
		
			st.setString(3, obj.getPassword());
			
			st.setString(4, obj.getType());
			
			st.setInt(5, obj.getId());
			
			int rows = st.executeUpdate();
			
			b = true;
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	
}
