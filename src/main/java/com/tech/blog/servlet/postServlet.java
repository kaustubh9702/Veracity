package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.Postdao;
import com.tech.blog.entities.message;
import com.tech.blog.entities.post;
import com.tech.blog.entities.user;
import com.tech.helper.ConnectionProvider;

@WebServlet("/postServlet")
public class postServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = request.getParameter("title");

		String content = request.getParameter("content");

		int cid = Integer.parseInt(request.getParameter("cid"));
		
		if(title == "" || content == ""){
			
			response.sendRedirect("profile.jsp");
		}
		else
		{

		HttpSession session = request.getSession();
		user u = (user) session.getAttribute("currentuser");

		PrintWriter out = response.getWriter();
	
		
		
		
		post p = new post(cid,title,content,null,null,u.getEmail());
			
		
		Postdao dao = new Postdao(ConnectionProvider.getConnection());
	
		if(dao.newpost(p)) {
		message post = new message("Post published!" , "success", "alert-success");
		session.setAttribute("msg", post);
		response.sendRedirect("profile.jsp");	
		
	
	}
	}
}

}
