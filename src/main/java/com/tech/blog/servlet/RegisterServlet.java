package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

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

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String check = request.getParameter("check");
		String user_name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String type = request.getParameter("tid");
		PrintWriter out = response.getWriter();
		
		if(check == null || user_name == "" || email == "" || password == "") {
			
			String n = "Complete the Form";
			message msg = new message(n,"danger","alert-danger");
			HttpSession session = request.getSession();
			session.setAttribute("m", msg);
			response.sendRedirect("Register.jsp");
		}
		
		else {
		
	
		
		// creating user object and passing the values
		
		user user = new user(user_name,password,email,type); 
		
		
		
		//creating a user dao object
		
		userDAO dao = new userDAO(ConnectionProvider.getConnection());
		String m = "";
		
		
		if(dao.InsertUser(user))
		{
			HttpSession session = request.getSession();
			m = "Registration Successfull";
			message msg = new message(m,"success","alert-success");
			session.setAttribute("m", msg);
			
			response.sendRedirect("Login.jsp");
		
		}
		else
		{
		HttpSession session = request.getSession();
		m = "Try again with different email";
		message msg = new message(m,"danger","alert-danger");
		session.setAttribute("m", msg);
		
		response.sendRedirect("Register.jsp");
		}
			
			
	}

}
}
