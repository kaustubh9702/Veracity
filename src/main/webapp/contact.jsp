<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact me</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file = "normal_navbar.jsp" %>
<div class = "container-fliud m-0 p-0">
	<div class = "jumbotron">
		<div class = "container">
		
		<h3 class = "display-3">Kaustubh Lawale </h3>
		<p> Hello!! I'm a full stack developer skilled in  Java, Spring Framework, Microservices, MySQL, Native App Development, Aws,  Javascript, ReactJs,HTML, CSSgrid , CPP. <!-- Currently looking for oppurtunities in SDE domain. --> Give your feedback and feel free to contact me through this form.  </p>
	</div>
	</div>
	</div>
	<div class = "container form-group">
			<form class = "p-5" action= "contactme">
			<div class="form-group">
			    <label for="exampleInputPassword1">Your Name </label>
			    <input name = "name" type="text" class="form-control" id="exampleInputPassword1">
			  </div>
		  	<div class="form-group">
			    <label for="exampleInputEmail1">Email address</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  
			  <div class= "form-group">
			  <label for="exampleInputEmail1"> Enter your message</label>
			  <textarea class = "form-control">
			  </textarea>
			  
			  </div>
			  <div class = "form-group text-center">
			  	<a href="contactme" class="btn btn-secondary btn-md active m-4" role="submit" aria-pressed="true">Send Message</a>
			  	<a href="https://www.linkedin.com/in/kaustubh-lawale/" class="btn btn-secondary btn-md active " role="button" aria-pressed="true">Go to Kaustubh's Linkedin profile</a>
			  </div>
			 
			  
			  
		</form>
	</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>