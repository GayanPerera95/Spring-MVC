<head>
  <%@include file="./base.jsp" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

 	<div class="container mt-3">
 	
 		<div class="row">
 			
 			<div class="col-md-12">
 			
 				<h1 class = "text-center mb-3">Welcome to Pharmacy Application</h1>
 				<br>
 			    <div>
 			     <form action="${pageContext.request.contextPath }/search_item" method="POST">
 			     	Filter : <input type="text" name="freeText" placeholder="Enter Item ID" required/>
 			     	&nbsp;
 			     	<input type="submit" value="Search" />
 			     	
 			     </form>
 			    </div>
 			    
 			   <table class="table">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">ID</th>
				      <th scope="col">Medicine Name</th>
				      <th scope="col">Description</th>
				      <th scope="col">Quntity</th>
				      <th scope="col">Price</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  
				  <tbody>
				  <c:forEach items="${items }" var="i">
				    <tr>
				      <th scope="row">${i.id }</th>
				      <td>${i.name }</td>
				      <td>${i.description }</td>
				      <td>${i.quantity }</td>
				      <td>${i.price }</td>
				      <td>
				        <a href="delete/${i.id }"><i class="fas fa-trash text-danger fa-fw" style="font-size: 25px;"></i></a>
				        
				        <a href="update/${i.id }"><i class="fas fa-pen-nib text-primary fa-fw" style="font-size: 25px;"></i></a>
				      </td>
				    </tr>
				   </c:forEach>
				  </tbody>  
				</table>
				
				<div class="container text-center">
				
					<a href="add-item" class="btn btn-outline-success">Add Product</a>
				
				</div>
 			</div>
 		
 		
 		</div>
 	
 	
 	</div>
  


</body>
</html>
