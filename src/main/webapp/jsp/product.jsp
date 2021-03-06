<%@page import="com.ecommerce.model.*"%>
<%@page import="java.util.*"%>
<%@page import="com.ecommerce.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		List<Category> categories = new CategoryDao().getAllCategories();
	%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../includes/head.jsp"></jsp:include>
<title>Mountainbike Shop - Products</title>
</head>
<body>
	<div class="header">
		<div class="container">
			<!-- Navigation Bar Inclue file -->
			<jsp:include page="../includes/navigationbar.jsp"></jsp:include>
		</div>
	</div>


	<div class="Kategorie">
		<div class="KategorieBild">
			<img src="../assets/img/Kat.jpeg">

		</div>
	</div>

	<div class="small-container">
		<h3>Produkt Kategorien</h3>
		<div class="text">
			<p>Fahrrad ist nicht gleich Fahrrad. Ob das Neue den Besitzer
				glücklich macht, liegt an der Wahl des richtigen Modells für den
				richtigen Einsatz. Möchtest du meist auf unbefestigten Wegen im Wald
				oder Gebirge unterwegs sein? Suchst du ein schnelles sportliches Rad
				für lange Straßenrunden? Möchtest du einen rundherum ausgestatteten
				Begleiter für die täglichen Wege im Alltag? Oder suchst du ein Rad,
				mit dem du auch größere Touren mit Gepäck problemlos bewältigen
				kannst? Oder geht es gar nicht um dich, sondern um den Nachwuchs?
				Die ehrliche Antwort nach dem anvisierten Anwendungsbereich ist der
				erste und wichtigste Schritt durch das breite Fahrradangebot. Nutze
				unsere übersichtlichen Fahrrad-Kategorien und Filter um zielsicher
				die passende Auswahl zu treffen.
		</div>
		<br> <br>
		<div class="row">
			<%
				if(categories != null){
					for(Category c:categories){%>
						<div class="col-4">
							<a href="../jsp/products-list.jsp?cid=<%= c.getId() %>"><img src="..<%= c.getImagePath()%>"></a>
							<a href="../jsp/products-list.jsp?cid=<%= c.getId() %>"><h4><%= c.getName() %></h4></a>
						</div>
					<%}
				}
			%>
		</div>
	</div>



	<div class="infoFahrrad">
		<h4>Ein neues Fahrrad kaufen - so findest du deinen Begleiter</h4>

		<p>Ob für den Weg zur Arbeit, den unwegsamen Trail durch den Wald
			oder die sportliche Runde auf asphaltierten Serpentinen – mit dem
			richtigen Fahrrad wird jede Fahrt zum Erlebnis. Damit das Bike zu
			deinem bevorzugten Einsatzbereich passt, ist es wichtig, deinen neuen
			Begleiter behutsam auszuwählen. Im Folgenden findest du hilfreiche
			Tipps für deinen nächsten Fahrradkauf.</p>


		<h4>Welches Fahrrad passt zu dir?</h4>


		<p>Welches Fahrrad das richtige für dich ist, hängt maßgeblich von
			deinem zukünftigen Anwendungsbereich ab. Es gibt verschiedene
			Fahrradtypen für Stadt, befestigte Wege, unwegsames Gelände oder auch
			mit Motorunterstützung. Die sechs gängigsten Bautypen sind:</p>

		<ul>

			<li>- Cityrad</li>
			<li>- Rennrad</li>
			<li>- Moutainbike</li>
			<li>- Trekkingrad</li>
			<li>- e-Bike</li>
			<li>- Klapprad</li>

		</ul>

		<p>Bist du eher Freizeitradler, Fitnessfreak, Alltagsbiker oder
			Langstreckenfahrer? Frage dich vor deinem Kauf, wo du am meisten
			unterwegs bist und zu welchem Zweck du dein neues Fahrrad
			hauptsächlich nutzen möchtest.</p>

		<a href="../html/MBseite.html"><h4>Mountain-Bike</h4></a>
		<p>
			Für sportliche Touren fernab befestigter Straßen ist das <a
				href="../html/MBseite.html">Mountainbike</a> der perfekte Partner.
			Es verfügt über kraftvolle Bremsen, ein grobes Reifenprofil und eine
			entsprechende Federung. Der stabile Rahmen und die feine
			Kettenschaltung ermöglichen dir maximale Geländetauglichkeit.
			Hinsichtlich der Federung unterscheidet man zwischen einem Hardtail-
			und einem Full-Suspension-Mountainbike, auch Fully genannt. Ein
			Hardtail bietet aufgrund der höheren Steifigkeit eine bessere
			Kraftübertragung auf befestigten Wegen. Das Fully bietet ein Plus an
			Kontrolle und Traktion, wenn es in unwegsames Gelände geht.
		</p>

		<a href="../html/CBseite.html"><h4>City-Bike</h4></a>
		<p>
			Wie der Name bereits verrät, ist das <a href="../html/CBseite.html">City-Bike</a>
			dein perfekter Begleiter für die Stadt. Die aufrechte Haltung
			ermöglicht dir eine komfortable Fahrposition und einen guten
			Überblick im Straßenverkehr. Dank verschiedener Transport- und
			Befestigungsmöglichkeiten kannst du beispielsweise deine Einkäufe
			bequem und sicher nach Hause transportieren.
		</p>

		<a href="../html/CBseite.html"><h4>Trekking-Bike</h4></a>
		<p>
			Der Hybrid zwischen Rennrad und Mountainbike ist für längere Touren
			übers Wochenende genauso geeignet wie für schnelle Alltagsfahrten auf
			asphaltierten Wegen. Es verfügt über einen stabilen Rahmen und gut
			profilierte Räder. Mit dem <a href="../html/TBseite.html">Trekking-bike</a>
			bist du sicher und flexibel auf unterschiedlichsten Untergründen
			unterwegs. Die Sitzhaltung sorgt für eine gute Aerodynamik, bietet
			jedoch ausreichend Komfort, um auch lange Zeit im Sattel verbringen
			zu können.
		</p>

		<a href="../html/CBseite.html"><h4>e-Bike</h4></a>
		<p>
			Das <a href="../html/EBseite.html">e-Bike</a> ist mit seinem
			Elektromotor ein Fahrrad für jede Generation. Egal ob als City-,
			Trekking- oder Mountainbike-Variante – der leistungsstarke Motor
			unterstützt dich bei Bedarf, wie du es möchtest. Das E-Bike ist schon
			lange nicht mehr ausschließlich für ältere Generationen gedacht. Die
			extra Power kann dich ohne Schweiß ins Büro bringen oder Berge
			erklimmen lassen, die du dir sonst vielleicht nie zugetraut hättest.
			Auch für passionierte Langstreckenfahrer ist die elektrische
			Unterstützung ein echter Zugewinn.
		</p>

		<a href="../html/CBseite.html"><h4>Renn-Bike</h4></a>
		<p>
			Das <a href="../html/MBseite.html">Renn-Bike</a> erzeugt nicht nur
			mit seinem dynamischen Aussehen Aufmerksamkeit. Die schmalen, kaum
			profilierten Reifen und der klassisch nach unten gebogene Lenker
			verhelfen dir zu einer reibungslosen und schnellen Fahrt auf dem
			Asphalt. Die flache Sitzposition ermöglicht dir eine optimierte
			Aerodynamik, wodurch du mit dem Rennrad nicht nur sportlich, sondern
			auch in extrem hohen Geschwindigkeiten unterwegs bist.
		</p>

		<a href="../html/CBseite.html"><h4>Kids-Bike</h4></a>
		<p></p>
		<br> <br> <br>
	</div>

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>App download</h3>
					<p>Lade die App für iOS und Android herunter</p>
					<div class="app-logo">
						<a href="https://www.apple.com/de/app-store/"><img
							src="../assets/img/app-store.png"></a> <a
							href="https://play.google.com/store"><img
							src="../assets/img/play-store.png"></a>
					</div>
				</div>



				<div class="footer-col-2">
					<h3>Links</h3>
					<ul>
						<li><a href="" />Coupons</li>
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
					<a href=""> <img src="../assets/img/paypal.png"></a> <a href="">
						<img src="assets/img/visa.png">
					</a> <br> <a href=""> <img src="../assets/img/mastercard.png"></a>
					<a href=""> <img src="assets/img/klarna.png"></a>
				</div>

				<div class="footer-col-5">
					<h3>Versand mit</h3>
					<a href=""> <img src="../assets/img/dhl.png"></a> <a href=""> <img
						src="../assets/img/hermes.png"></a> <br> <a href=""> <img
						src="../assets/img/ups.png"></a>
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
</body>
</html>