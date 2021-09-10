<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../includes/head.jsp"></jsp:include>
<title>Mountainbike Shop - Konto</title>
<style type="text/css">
.form-container {
	position: relative;
	width: 50%;
	height: auto;
}

#login-card, #register-card {
	position: absolute;
	width: 100%;
	height: auto;
	display: none;
}

.active-form {
	display: block !important;
}
</style>
</head>
<body>
	<div class="header">
		<div class="container">
			<!-- Navigation Bar Inclue file -->
			<jsp:include page="../includes/navigationbar.jsp"></jsp:include>
		</div>
	</div>
	<div class="container">
		<div class="mx-auto my-5 w-50 form-container">
			<div class="card active-form" id="login-card">
				<div class="card-header">
					User Login
					<button class="btn btn-sm btn-secondary float-right"
						data="register-card">Register</button>
				</div>
				<div class="card-body">
					<form action="UserLoginServlet" method="post">
						<div class="form-group">
							<label>Email</label> <input type="email" name="login_email"
								class="form-control" placeholder="please input email" required />
						</div>
						<div class="form-group">
							<label>Email</label> <input type="password" name="login_password"
								class="form-control" placeholder="please input password"
								required />
						</div>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
			</div>

			<div class="card" id="register-card">
				<div class="card-header">
					User Register
					<button class="btn btn-sm btn-secondary float-right"
						data="login-card">Login</button>
				</div>
				<div class="card-body">
					<form action=UserRegistrationServlet method="post">
					<div class="form-group">
							<label>Name</label> <input type="text" name="reg_name"
								class="form-control" placeholder="Enter Name" required />
						</div>
						<div class="form-group">
							<label>Email</label> <input type="email" name="reg_email"
								class="form-control" placeholder="Enter Email" required />
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" name="reg_password"
								class="form-control" placeholder="Enter Password"
								required />
						</div>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../includes/footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(".card-header button").click(function() {
			let id = $(this).attr('data');
			$('.form-container .card.active-form').removeClass('active-form');

			$("#" + id).addClass('active-form');

		});
	</script>
</body>
</html>