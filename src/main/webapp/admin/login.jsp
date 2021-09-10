<%@page import="com.ecommerce.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	Admin  auth = (Admin) request.getSession().getAttribute("admin");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
<jsp:include page="./includes/navbar.jsp"></jsp:include>
	<div class="container">
		<div class="mx-auto my-5 w-50">
			<div class="card">
				<div class="card-header text-center">Admin Login</div>
				<div class="card-body">
					<form action="AdminLoginServlet"  method="post">
						<div class="form-group">
							<label>Email</label> <input type="email" name="login_email"
								class="form-control" placeholder="please input email" required />
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" name="login_password"
								class="form-control" placeholder="please input password"
								required />
						</div>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="./includes/footer.jsp"></jsp:include>
</body>
</html>