<%@page import="com.tech.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>  Veracity</title>
</head>
<body>
<%@ include file ="normal_navbar.jsp"  %>


<!-- Banners and login button  -->

<div class = "container-fliud m-0 p-0">
	<div class = "jumbotron">
		<div class = "container">
		<h3 class = "display-3">Welcome to Veracity </h3>
		<p> A public platform where all professional and enthusiast programmers can share their knowledge.</p>
		<a href = "Register.jsp" type="button" class="btn btn-outline-dark"><span class = "	fa fa-user-plus"></span>  Join the community. It's Free!</a>
		<a href = "Login.jsp"  class="btn btn-outline-dark"><span class = "fa fa-user-o fa-spin"></span>  Login</a>
		</div>
	</div>
</div>

<br>



<!-- Cards -->

<div class= "container">
  <div class="row">
  
    <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">Java</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
     <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">Python</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
     <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">CPP</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
    </div>
    
    <br>
    
      <div class="row">
  
    <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">JavaScript</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
     <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">Scala</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
     <div class="col-md-4">
   	<div class="card" style="width: 18rem;">
  	<div class="card-body">
    <h5 class="card-title">Go</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-dark">Read More</a>
  	</div>
	</div>
    </div>
    
    </div>
    
    
    </div>
    
    







<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>





</body>
</html>