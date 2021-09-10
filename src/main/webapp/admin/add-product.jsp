<%@page import="java.util.List"%>
<%@page import="com.ecommerce.dao.CategoryDao"%>
<%@page import="com.ecommerce.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	Admin  auth = (Admin) request.getSession().getAttribute("admin");
	if (auth == null) {
		response.sendRedirect("login.jsp");
	}
	
	 List<Category> categories = new CategoryDao().getAllCategories();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="./includes/navbar.jsp"></jsp:include>
	<div class="container">
		<div class="mx-auto my-5">
			<div class="card">
				<div class="card-header text-center">Add Products</div>
				<div class="card-body">
					<form action="AddProductServlet" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label>Product Name</label> 
							<input type="text" name="name"
								class="form-control" placeholder="please input product name"
								required />
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label>Product Price</label> 
								<input type="number"
									name="price" class="form-control"
									placeholder="please input product price" step="0.01" required />
							</div>
							<div class="form-group col-md-6">
								<label for="inputState">Product Category</label> 
								<select id="inputState" name="category" class="form-control">
								<option selected disabled>Choose...</option>
								<%
									if(categories != null){
										for(Category c:categories){%>
											<option value="<%= c.getId() %>"><%= c.getName() %></option>
										<%}
									}
								%>
								</select>
							</div>

						</div>
						<div class="form-group">
							<label>Choose Product Picture</label>
							<div class="custom-file">
								<input type="file" class="custom-file-input" name="image" id="customFile">
								<label class="custom-file-label" for="customFile">Choose
									file</label>
							</div>
						</div>

						<div class="form-group">
							<label for="exampleFormControlTextarea1">Example textarea</label>
							<textarea class="form-control" name="description" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Insert Product</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./includes/footer.jsp"></jsp:include>
	 <script>
            $('#customFile').on('change',function(){
                //get the file name
                var fileName = $(this).val().replace(/^.*[\\\/]/, '');
                //replace the "Choose a file" label
                $(this).next('.custom-file-label').html(fileName);
            })
        </script>
</body>
</html>