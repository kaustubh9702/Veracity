package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.userDAO;
import com.tech.blog.entities.message;
import com.tech.blog.entities.user;
import com.tech.helper.ConnectionProvider;
import com.tech.helper.Secure;



@WebServlet("/Login_kaustubh")
public class Login_kaustubh extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String hashed = null;
		
		try
		{
		Secure obj1 = new Secure();
		 hashed = obj1.generateHash(password);
		 password = null;
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		
		
		HttpSession session = request.getSession();
		
		
		PrintWriter out = response.getWriter();
		
		
		userDAO obj = new userDAO(ConnectionProvider.getConnection());
		
		user u = obj.getUserCredentials(email, hashed);
		
	
		
		if(u == null) {
			message  msg = new message("Invalid Details!","error","alert-danger");
			session.setAttribute("m", msg);
			response.sendRedirect("Login.jsp");
			
		}
		else
		{
			
		session.setAttribute("currentuser", u);
		response.sendRedirect("profile.jsp");
			
		}
		
	}

}
