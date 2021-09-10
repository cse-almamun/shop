
<%@page import="com.ecommerce.connection.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../includes/head.jsp"></jsp:include>
	<title>Mountainbike Shop</title>
</head>
<body>
	<div class="header">
		<div class="container">
			<!-- Navigation Bar Inclue file -->
			<jsp:include page="/includes/navigationbar.jsp"></jsp:include>

			<div class="row">
				<div class="col">
					<h1>Fahrräder <br> für Amateure<br> und Profis</h1>
					<a href="../html/Produkte.html" class="button"> Jetzt entdecken
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="testimonial">
	<div class="small-container">
		<div class="row">
			<div class="col-3">
			<i class="fa fa-quote-left"></i>
			<p>Sehr zufrieden mit dem Fahrrad </p>
			<div class="rating">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</div>
			<img src="../assets/img/user-1.png"/>
			<h3>Vivien Kaußen</h3>
			</div>
			
			
			<div class="col-3">
			<i class="fa fa-quote-left"></i>
			<p> Würde ich nur weiterempfehlen </p>
			<div class="rating">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</div>
			<img src="../assets/img/user-2.png"/>
			<h3>Andre Wendler</h3>
			</div>
			
			
			<div class="col-3">
			<i class="fa fa-quote-left"></i>
			<p> Super Qualität zum guten Preis </p>
			<div class="rating">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</div>
			<img src="../assets/img/user-3.png"/>
			<h3>Anastasia Metz</h3>
			</div>
			
		</div>
	</div>
	<br>
<br>
<br>
</div>



<div class="footer"> 
	<div class="container"> 
		<div class="row"> 
			<div class="footer-col-1"> 
				<h3>App download</h3>
				<p>Lade die App für iOS und Android herunter</p>
				<div class="app-logo">
					<a href="https://www.apple.com/de/app-store/"><img src="../assets/img/app-store.png"></a>
					<a href="https://play.google.com/store"><img src="../assets/img/play-store.png"></a>
				</div>
			</div>
			
		
			
			<div class="footer-col-2"> 
				<h3>Links</h3>
				<ul>
					<li><a href=""/>Coupons</li>
					<li><a href="">Blog post</a></li>
					<li><a href="">Retoure Policy</a></li>
					<li><a href="">Join us</a></li>
				</ul>
			</div>
			
			<div class="footer-col-3"> 
				<h3>Folge uns</h3>
				<ul>
					<li><a href="https://www.facebook.com">Facebook</a></li>
					<li><a href="https://www.instagram.com">Instagram</a></li>
					<li><a href="https://twitter.com">Twitter</a></li>
					<li><a href="https://www.youtube.com">Youtube</a></li>
				</ul>
			</div>
			
		
			
			<div class="footer-col-5"> 
				<h3>Zahlungsarten</h3>
			    <a href=""> <img src="../assets/img/paypal.png"></a>
			    <a href=""> <img src="../assets/img/visa.png"></a>
			    <br>
			    <a href=""> <img src="../assets/img/mastercard.png"></a>
			    <a href=""> <img src="../assets/img/klarna.png"></a>
			</div> 
			
			<div class="footer-col-5"> 
				<h3>Versand mit</h3>
			    <a href=""> <img src="../assets/img/dhl.png"></a>
			    <a href=""> <img src="../assets/img/hermes.png"></a>
			    <br>
			    <a href=""> <img src="../assets/img/ups.png"></a>
			</div> 
			
			
		</div>
		<br>
		<hr>
		<br>
		
		<div class="row"> 
		<div>
		<a href="../html/AGB.html"><p>AGB</p></a>
		</div>
		
		<div>
		<a href="../html/Impressum.html"><p>Impressum</p></a>
		</div>
		
		<div>
		<a href="../html/Datenschutz.html"><p>Datenschutz</p></a>
		</div>
		
		
		<div>
		<p class="copyright">Copyright 2021 - Nafri Gang</p>
		</div>
		</div>
	</div>
 </div>
 
 <script>
 
 	var MenuItems = document.getElementById("MenuItems");
 	
 		MenuItems.style.maxHeight= "0px";
 		
 		function menutoggle() {
			if (MenuItems.style.maxHeight == "0px") {
				MenuItems.style.maxHeight = "200px";
			}else{
				MenuItems.style.maxHeight = "0px";
			}
		}
 	
 
 </script>
</body>
</html>