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
			
			<h1 class="text-center mb-3">Update the Medicine Items Details</h1>
			
			<form action="${pageContext.request.contextPath }/handle-item" method="post">
			
			<div class="form-group">
			    <label for="name">Item Id</label>
				<input type="text" class="form-control" aria-describedby="emailHelp" 
				value="${item.id }" name="id"/>
			</div>
			  <div class="form-group">
			    <label for="name">Medicine Name</label>
			    <input type="text" class="form-control" name="name" id="name" aria-describedby="emailHelp" placeholder="Enter Medicine Name"
			    value="${item.name }"
			    >
			    <small id="emailHelp" class="form-text text-muted">Will never type short name.</small>
			  </div>
			  <div class="form-group">
			    <label for="name">Medicine Description</label>
			    <input type="text" class="form-control" name="description" id="description" aria-describedby="emailHelp" placeholder="Enter Any Medicine Details "
			    value="${item.description }"
			    >
			  </div>
			  <div class="form-group">
			    <label for="name">Quantity</label>
			    <input type="text" class="form-control" name="quantity" id="quantity" aria-describedby="emailHelp" placeholder="Enter Quantity "
			    value="${item.quantity }"
			    >
			  </div>  
			  <div class="form-group">
			    <label for="name">Price</label>
			    <input type="text" class="form-control" name="price" id="price" aria-describedby="emailHelp" placeholder="Enter Price "
			    value="${item.price }"
			    >
			  </div>
			  
			  <div class="container text-center">
			  	<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
			  
			  	<button type="submit" class="btn btn-primary">Update</button>
			  </div>
			  
			</form>
			</div>
		
		
		
		</div>
	
	
	
	</div>





</body>
</html>