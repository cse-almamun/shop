<%@page import="java.util.List"%>
<%@page import="com.ecommerce.dao.ProductDao"%>
<%@page import="com.ecommerce.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	Admin  auth = (Admin) request.getSession().getAttribute("admin");
	if (auth == null) {
		response.sendRedirect("login.jsp");
	}
	
	ProductDao pdao = new ProductDao();
	List<Product> products = pdao.getAllProducts();
	request.setAttribute("products", products);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Control</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="./includes/navbar.jsp"></jsp:include>
	<div class="container">
		<div class="card-header my-2 text-center">
			<h3>All Products</h3>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Product Name</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Added At</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<%
			if(products != null){
				int i =1;
				for(Product p:products){%>
					<tr>
						<th scope="row"><%= i %></th>
						<td><%= p.getName() %></td>
						<td><%= p.getPrice() %></td>
						<td><%= p.getCategoryName() %></td>
						<td><%= p.getAdded_at() %></td>
						<td><a href="DeleteProductServlet?id=<%= p.getId() %>">Delete</a></td>
					</tr>
					
				<%
				i++;
				}
			}else{
				out.print("no products found");
			}
			
			%>
			</tbody>
		</table>
	</div>
	<jsp:include page="./includes/footer.jsp"></jsp:include>
</body>
</html>