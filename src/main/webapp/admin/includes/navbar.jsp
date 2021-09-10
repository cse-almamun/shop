<%@page import="com.ecommerce.model.Admin"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Admin Panel</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="add-product.jsp">Add Product</a></li>
				<% 
				Admin  auth = (Admin) request.getSession().getAttribute("admin");
				if(auth == null){%>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<%}else{%>
					<li class="nav-item"><a class="nav-link" href="AdminLogOutServlet">Logout</a></li>
				<%}
				%>
				
				
			</ul>
		</div>
	</div>
</nav>