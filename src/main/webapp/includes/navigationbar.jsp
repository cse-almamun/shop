<%@page import="com.ecommerce.model.User"%>
<%
User user = (User) request.getSession().getAttribute("user");
%>
<div class="navigationbar">
	<div class="logo">
		<a href="/shop"><img src="../assets/img/logo.png" width="125px"></a>
	</div>
	<nav>
		<ul id="MenuItems">
			<li><a href="index.jsp">Startseite</a></li>
			<li><a href="product.jsp">Produkte</a></li>
			<%
			if (user == null) {
			%>
			<li><a href="konto.jsp">Konto</a></li>
			<%
			}
			%>

			<li><a href="Überuns.html">Über uns</a></li>
			<li><a href="Kontakt.html">Kontakt</a></li>
			<%
			if (user != null) {
			%>
			<li><a href="UserLogOutServlet">Logout</a></li>
			<%
			}
			%>

		</ul>
	</nav>

	<a href="../html/Korb.html"> <img src="../assets/img/cart.png"
		width="30px" height="30px"></a> <img src="../assets/img/menu.png"
		class="menu-icon" onclick="menutoggle()">

</div>