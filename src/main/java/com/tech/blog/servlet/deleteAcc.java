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
import com.tech.blog.entities.user;
import com.tech.helper.ConnectionProvider;


@WebServlet("/deleteAcc")
public class deleteAcc extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		user u = (user) session.getAttribute("currentuser");
		
		String mail = u.getEmail();
		
		userDAO dao = new userDAO(ConnectionProvider.getConnection());
		
		if(dao.Delete(mail)) {
			
			response.sendRedirect("index.jsp");
			
		}else {
			
				out.print("error");
		}
		
	}

}
