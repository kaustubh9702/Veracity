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


@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String type = request.getParameter("type");
	
		
		PrintWriter out = response.getWriter();
		

		
	HttpSession session = request.getSession();
	
	user obj = (user) session.getAttribute("currentuser");
	

	
		obj.setName(username);
		obj.setEmail(email);
		obj.setPassword(password);
		obj.setType(type);
		
		userDAO dao = new userDAO(ConnectionProvider.getConnection());
		
		if(dao.UpdateDetails(obj)) {
			
			
			message msg = new message("Profile updated successfully","success","alert-success");
			session.setAttribute("msg", msg);
			
			response.sendRedirect("profile.jsp");
			
		}else {
			out.print("error");
		}
		
	}

}
