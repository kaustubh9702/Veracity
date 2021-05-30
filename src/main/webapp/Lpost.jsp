
<%@page import="com.tech.blog.entities.user"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.dao.Postdao"%>
<%@page import="com.tech.helper.ConnectionProvider"%>

<div class = "rows">


<% 
	Postdao obj = new Postdao(ConnectionProvider.getConnection());
	List<post> list = null; 
	int cid = Integer.parseInt(request.getParameter("cid"));
	
	if(cid==0)
	{
	 list = obj.getpost();
	}
	else
	{
		list = obj.getpostCategory(cid);
	}
	
	if(list.size() ==0 ){
		out.println("<h3 class = 'display-3 text-center mt-5'>No posts in this category</h3>");
		return;
	}
	for(post e : list){
		
		%>
		
			<div class = "col-12 mt-5">
			<div class="card">
			<div class = "card-header bg-transparent">
				   
				   <%
				   Postdao p = new Postdao(ConnectionProvider.getConnection());
				   ArrayList<user> list2 = p.getUsername(e.getUserid());
				   for(user e1 : list2){
				   
				   %> 
				   	<h5> <span class = "fa fa-user-circle"> <%= e1.getName()  %></span></h5>
				   	<p> <%= e.getPdate() %>
				   	<p> <%= e1.getType() %></p>
				   
				   <%
				   }
				   %>
				   
				   </div>
				    
				 	 <div class="card-body">
				      <h3 class="card-title text-center "><i><b><%= e.getPtitle() %></i></b></h3>
				      <p class="card-text"> <%= e.getPcontent() %></p>
				    </div>
				    <div class="card-footer text-center ">
				      <a href="#!"  class =" btn btn-light btn-sm "><span class = "fa fa-thumbs-o-up"> 10</span> </a>
				      <a href="#!"  class =" btn btn-light btn-sm  "> <span class = "fa fa-commenting"> 10</span> </a>
				    </div>
			
		
			</div>
			</div>
					
		<%
	}
	%>
</div>
