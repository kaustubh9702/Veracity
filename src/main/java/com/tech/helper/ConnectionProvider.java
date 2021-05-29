package com.tech.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			if(con == null) {
		String user = "root";
		String pass = "kaustubh";
		String url = "jdbc:mysql://localhost:3306/techblog";
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,user,pass);
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return con;
	}

}
