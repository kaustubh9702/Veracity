<%@page import="com.tech.blog.entities.type"%>
<%@page import="com.tech.blog.entities.message"%>
<%@page import="com.tech.blog.entities.category"%>
<%@page import="com.tech.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.Postdao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
 <%@ page import = "com.tech.blog.entities.user" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@500&display=swap" rel="stylesheet">



</head>
<body>

<%
response.setHeader("Cache-Control" ,"no-cache,no-store,must-revalidate");	
	
  user u = (user) session.getAttribute("currentuser");


		if(u == null){
		response.sendRedirect("Login.jsp");
		}
		
		
%>

<main class = "bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><span class = "fa fa-cubes"></span>  Veracity</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="contact.jsp"><span class = "fa fa-file-code-o"></span>  About developer <span class="sr-only">(current)</span></a>
      </li>
 
      
       <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#post-modal"><span class = "	fa fa-upload"></span>  Post</a>
      </li>
     
    </ul>
	<ul class= "navbar-nav mr-right">
	<li class="nav-item">
        <a class="nav-link href="#!" data-toggle="modal" data-target="#profile-modal" ><span class = "fa fa-user-circle"></span>  <%= u.getName() %></a>
      </li>
      <li class="nav-item">
        <a class="nav-link href="#!"  data-toggle="modal" data-target="#delete-acc" ><span class= "fa fa-times-circle"></span> Delete Account</a>
      </li>
    
	<li class="nav-item">
        <a class="nav-link" href="Logout"><span class = "fa fa-sign-out"></span>  Logout</a>
      </li>
	
	</ul>
  </div>
</nav>

<% message m = (message)session.getAttribute("msg");
if(m!=null){
%>
<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
 <%= m.getMsg() %>
</div>
<%
session.removeAttribute("msg");
}
%>
 
 

		
		<div class = "row m-4">
		
				<div class = "col-md-3">
				<div class="card  mb-3 text-center bg-light ">
			  <div class="card-body text-secondary text-dark">
			  <img src = "img/default.png" class = "img-fluid" style = "border-radius : 50%">
			    <h5 class="card-title"><span class ="	fa fa-registered" ></span ><b>  <%= u.getName() %></b></h5>
			    <p class="card-text"></p>
			     <p class="card-text"><%= u.getType() %></p>
			     	<button type="button" class="btn btn-outline-dark " data-toggle="modal" data-target="#post-modal"><span class = "	fa fa-upload"></span>  <b>Share post</b></button>
			  </div>
			  </div>
				<div class="list-group text-center  mt-3">
					  <a href="#" onclick = "getPosts(0,this)" class ="c-link list-group-item list-group-item-action active " aria-current="true" >
					<b> All posts</b>
					  </a>
					  <%
					  Postdao obj = new Postdao(ConnectionProvider.getConnection());
					  
					  ArrayList<category> list1 = obj.getCategories();
					  for(category e : list1){  
					  %>
					  <a href="#" onclick = "getPosts(<%= e.getCid() %>, this)" class=" c-link list-group-item list-group-item-action"><b> <%= e.getName() %></b></a>
					<%
					
					  }
					%>
					
					</div>
					
				</div>
				
				
			
				<div class = "col-md-9" >
						<div class= "container-fluid" id = "post">
						
						
						</div>
					
				
				</div>
		
		</div> 		

 </main>
 
 


									<!-- Delete account Modal -->
<div class="modal fade" id="delete-acc" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
       	<h4> Are you sure you want to delete the account?</h4>
      </div>
      <div class= "container">
      <div class="modal-footer text-center">
      <form action = "deleteAcc" method ="post">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit"  class="btn btn-outline-danger">Delete Account</button>
        </form>
        </div>
      </div>
    </div>
  </div>
</div>
 
 
 

<!-- modal -->


<!--profile Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header text-center bg-secondary text-light">
        <h5 class="modal-title " id="exampleModalLabel"><span class ="fa fa-cubes" ></span>  Veracity</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<div class = "container text-center">
        	<img src = "img/default.png" class = "img-fluid" style = "border-radius : 50%">
        	<br>
         <h3 class="modal-title " id="exampleModalLabel"><span class ="	fa fa-vcard-o" ></span>  <%= u.getName() %> </h3>
         
         <div id ="profile-details">
         <table class="table">
				 
				  <tbody>
			
				    <tr>
				      <th scope="row">Email :</th>
				      <td><%= u.getEmail() %></td>
				    </tr>
				    
				    <tr>
				      <th scope="row">About  :</th>
				      <td><%= u.getType() %></td>
				    </tr>
      
    						 
				    
				    <tr>
				      <th scope="row">Registered on :</th>
				      <td><%= u.getDate().toGMTString() %></td>
				    </tr>
				   
				  </tbody>
				</table>
				</div>
				
				
				<div id ="profile-edit" style = "display : none;">
		        	 
						 <h4 class = "mt-2"> Edit your details</h4>
						 <form action = "EditServlet" method = "post" >
						 <table class = "table">
			
						 
						 <tr>
						  <td>User Name: </td>
						 
						  <td><input type = "text" class = "form-control" name = "name" value = "<%= u.getName() %>" > </td>
						 
						 </tr>
						 
						
						 
						 <tr>
						  <td>About: </td>
						 
						  <td>
						  <textarea class = "form-control" rows=5 name = "type" ><%= u.getType() %></textarea> </td>
						 
						 </tr>
						 
						 </table>
						 
						 <div class = "conatiner">
						 
						 <button type="submit" class="btn btn-outline-info">Save</button>
						 
						 </div>
						 
						 </form>
				</div>
		      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		
        <button id ="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>



					<!--post modal -->
	
<!-- Modal -->
<div class="modal fade" id="post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Post details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      
      
      <form  action="postServlet" method = "post">
      
      <div class = "form-group">
      	<select name = "cid" class = "form-control">
      		<option selected disabled>---Select Category--- </option>
      		
      		<%
      		Postdao dao = new Postdao(ConnectionProvider.getConnection());
      		
      		ArrayList<category> list = dao.getCategories();
      		
      		for(category e : list){
      		
      		%>
      		
      		<option value = "<%= e.getCid() %>"> <%= e.getName() %></option>
      		<%
      		}
      		%>
      		
      	
      	</select>
      
      </div>
      	
      		<div class= "form-group">
      		<input name = "title" type = "text" placeholder ="Enter your title here" class = 'form-control'>
      		</div>
      		<div class= "form-group">
      		<textarea name = "content" class = "form-control" style = "height : 500px" placeholder = "Enter your content"></textarea>
      		</div>
      		<div class = "container text-center">
 				<button type="submit" class="btn btn-primary">Post</button>     		
      			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      		</div>
      
      </form>
      </div>
      
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<!-- Dynamic Form edit -->

		<script>
				$(document).ready(function () {
					
					let eStatus = false;
					
					$('#edit-profile-button').click(function(){
					
						if(eStatus == false){
							$("#profile-details").hide();
							
							$("#profile-edit").show();
							
							eStatus = true;
							
							$(this).text("Back")
						}
						
						else
						
						{
							$("#profile-details").show();
							
							$("#profile-edit").hide();
							
							eStatus = false;
							
							$(this).text("Edit")
							
						}
					})
				})
				
		</script>
		
		<!-- fetching data through Ajax -->
		
		<script>
		
			function getPosts(catid,temp){
				
				$(".c-link").removeClass('active')
				
				$.ajax({
					
					url: "Lpost.jsp",
					data : {cid : catid},
					success: function (data, textStatus, jqXHR){
						console.log(data);
						$('#post').html(data)
						$(temp).addClass('active')
					}
				})
				
			}
			
			
		
			$(document).ready(function(e){
				
				let Allpost = $(".c-link")[0]
				getPosts(0,Allpost)
				
				
				
			})
		
		</script>
		
	
		
</body>
</html>