<%@page import="com.ecommerce.model.*"%>
<%@page import="java.util.*"%>
<%@page import="com.ecommerce.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("cid");
List<Product> products = null;
if (id == null) {
	products = new ProductDao().getAllProducts();
} else {
	products = new ProductDao().getProductByCategory(Integer.parseInt(id));
}
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../includes/head.jsp"></jsp:include>
<title>Mountainbike Shop - Category</title>
</head>
<body>
	<div class="header">
		<div class="container">
			<!-- Navigation Bar Inclue file -->
			<jsp:include page="../includes/navigationbar.jsp"></jsp:include>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="card"></div>
			</div>
		</div>
	</div>

	<%
	if (products.size()>0) {
		for (Product p : products) {%>
		

			
		<%}
	} else {
		out.print("Products not found");
	}
	%>
	<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>