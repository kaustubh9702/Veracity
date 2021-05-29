<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "com.tech.blog.entities.message"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Login</title>
</head>
<body>

<!-- Navbar -->

<%@ include file = "normal_navbar.jsp" %>


<!-- login card -->

	<main class = "d-flex align-items-center bg-secondary" style = "height: 70vh">
	<div class ="container">
	<div class ="row">
	<div class="col-md-4 offset-md-4">
	
  	<div class="card ">
  	
  	<div class = "card-header bg-dark text-white text-center">
  	<p><span class = "fa fa-user-o"></span>  <br>  Login Here</p>
  	</div>
	 	 <%
		message msg = (message) session.getAttribute("m");
		 if(msg!=null){
			 %>
			 	<div class="alert <%= msg.getCsst() %>" role="alert text-center">
				<%= msg.getMsg() %>
				</div>
		  
		<% 
			 session.removeAttribute("m");
		 }
		 %> 
	 	
  	
 	 <div class="card-body">
  
	<form action = "Login_kaustubh" method = "post">
  	<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input name ="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  	</div>
  
  
 	 <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input name = "pass" required  type="password" class="form-control" id="exampleInputPassword1">
 	 </div>
  
  <div class ="container text-center">
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