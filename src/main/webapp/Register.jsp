<%@page import="com.tech.blog.entities.type"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entities.category"%>
<%@page import="com.tech.blog.dao.Postdao"%>
<%@ page import = "com.tech.blog.entities.message" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<%@ include file = "normal_navbar.jsp" %>


<main class = "bg-secondary p-5">

	<div class= "container">
		<div class = "row">
			<div class = "col-md-6 offset-md-3">
				<div class = "card ">
					<div class = "card-header bg-dark text-light text-center">
					<span class  ="fa fa-user-circle-o"></span>
					<br>
					Register Here
					</div>
					  <%
					message m = (message) session.getAttribute("m");
				 if(m != null){
					 %>
					 	<div class="alert alert-danger text-center" role="alert">
						<%= m.getMsg() %>
						</div>
				  
				<% 
					 session.removeAttribute("m");
				 }
				 %> 
					
						<div class = "card-body">
						<form action="RegisterServlet" method = "post">
						
						<div class="mb-3">
					    <label for="username" class="form-label">User Name</label>
					    <input name = "name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					    <div id="username" class="form-text"></div>
					  	</div>
						
					  	<div class="mb-3">
					    <label for="exampleInputEmail1" class="form-label">Email address</label>
					    <input name = "email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
					  	</div>
					  
					 	 <div class="mb-3">
					    <label for="exampleInputPassword1" class="form-label">Password</label>
					    <input name = "pass" type="password" class="form-control" id="exampleInputPassword1">
					 	 </div>
					 	 
					 	 <div class = "form-group">
				      	<select name = "tid" class = "form-control">
				      		<option selected disabled>---Select Category--- </option>
					 	<%
					      		Postdao dao = new Postdao(ConnectionProvider.getConnection());
					      		
					      		ArrayList<type> list = dao.getType();
					      		
					      		for(type e : list){
					      		
					      		%>
					      	
					      		<option value = "<%= e.getType() %>"><%= e.getType() %> </option>
					      		<%
					      		}
					      		%>
					      		</select>
      
    						  </div>
					 	
					  	<br>
					  	
					  	
					  	<div class="mb-3 form-check">
					    <input type="checkbox"  name = "check" class="form-check-input" id="exampleCheck1">
					    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
					  	</div>
					  	
					  	<br>
					  	
					  	<div class = "container text-center">
					 	 <button type="submit" class="btn btn-primary">Submit</button>
					 	 </div>
						</form>
							
				</div>
			
			</div>
		
		</div>
	
	
	</div>
	
	</div>

</main>




<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>