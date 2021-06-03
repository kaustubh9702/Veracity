
<%@page import="com.tech.blog.entities.user"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.dao.Postdao"%>
<%@page import="com.tech.helper.ConnectionProvider"%>

<head>

<link rel = "stylesheet" href="css/mystyle.css" />

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&family=Patua+One&family=Raleway:wght@500&family=Roboto+Mono&display=swap" rel="stylesheet">


<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=PT+Mono&family=Raleway&display=swap" rel="stylesheet">
</head>



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
				   	<h5 > <span  class = "fa fa-user-circle"><span id = "name"> <%= e1.getName()  %></span></span></h5>
				   	<p> <%= e.getPdate() %>
				   	<p> <%= e1.getType() %></p>
				   
				   <%
				   }
				   %>
				   
				   </div>
				    
				 	 <div class="card-body">
				      <h2 id = "uni" class="card-title text-center "><%= e.getPtitle() %></h2>
				      <h6 id= "content" class="card-text"> <%= e.getPcontent() %></h6>
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

