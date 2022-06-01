<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>

	<div class="container mt-3">
	
		<div class="row">
		
			<div class="col-md-6 offset-md-3">
			
			<h1 class="text-center mb-3">Search Medicine Items Details</h1>
			
			<form action="${pageContext.request.contextPath }/search" method="post">
			    <table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">ID</th>
				      <th scope="col">Medicine Name</th>
				      <th scope="col">Description</th>
				      <th scope="col">Quntity</th>
				      <th scope="col">Price</th>	      
				    </tr>
				  </thead>
				  
				  <tbody>
				    <tr>
				     <th scope="row">${item.id }</th>
				      <td>${item.name }</td>
				      <td>${item.description }</td>
				      <td>${item.quantity }</td>
				      <td>${item.price }</td>    
				    </tr>
				  </tbody>  
				</table>
			  <div class="container text-center">
			  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>		  	
			  </div>		  
			</form>
			</div>
		</div>
	</div>
</body>
</html>