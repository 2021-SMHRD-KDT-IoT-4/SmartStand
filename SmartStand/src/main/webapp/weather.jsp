<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html style="background-size: cover; background-image: url(images/weather.jpg); background-repeat: no-repeat;
    background-position: center;">

<head>
	<title>Right Sidebar - Landed by HTML5 UP</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
</head>

<body class="is-preload" style="background: transparent;">

	
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" style="background: rgba( 255, 255, 255, 0.1 );">
			<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
			<nav id="nav">
				<ul>
					<li><a href="main.jsp">Main</a></li>
					<li>
						<a href="#">Mypage</a>
						<ul>
							<li><a href="myinfo.jsp">내 정보</a></li>
							<li><a href="myset.jsp">개인 설정</a></li>
						</ul>
					</li>
					<li><a href="weather.html">Weather</a></li>
					<li><a href="Q&AList.jsp">Q&A</a></li>
					<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main" class="wrapper style1" style="padding-top: 50px !important;
    padding-bottom: 100px !important;">
			<div class="container">
				<header class="major" style="
    margin-bottom: 0px;">
					<h2>날씨정보</h2>
					<p>Happy day, Please cherish your time.</p>
					<p>Check out today's weather.</p>

					<meta charset="utf-8">
					<title>Weather App - JavaScript</title>
					<link rel="stylesheet" href="font/Rimouski.css">
					<link rel="stylesheet" href="style.css">


				</header>

				<section id="content">

					<div class="js-clock">
						<h1>00:00</h1>
					</div>
					<div class="js-weather">

					</div>
				<!--Weather-->

					<div class="container">
						<div class="app-title">
							<p>현재 날씨</p>
						</div>
						<div class="notification"> </div>
						<div class="weather-container" style="box-shadow: 0 0 5em 0 rgb(0 0 0 / 50%); background-color: rgba(255,255,255,0.7)">
							<div class="weather-icon">
								<img src="images/unknown.png" alt="">
							</div>
							<div class="temperature-value">
								<p>- °<span>C</span></p>
							</div>
							<div class="temperature-description">
								<p style="font-weight: bold;"> - </p>
							</div>
							<div class="location">
								<p style="font-weight: bold;">-</p>
							</div>
						</div>
					</div>


					<!-- <a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a> -->
					<!-- <h3>Dolore Amet Consequat</h3>
					<p>Aliquam massa urna, imperdiet sit amet mi non, bibendum euismod est. Curabitur mi justo,
						tincidunt vel eros ullamcorper, porta cursus justo. Cras vel neque eros. Vestibulum diam
						quam, mollis at magna consectetur non, malesuada quis augue. Morbi tincidunt pretium
						interdum est. Curabitur mi justo, tincidunt vel eros ullamcorper, porta cursus justo.
						Cras vel neque eros. Vestibulum diam.</p>
-->
				</section>


				<!-- <div class="row gtr-150">
					<!-- Content -->
					
					<!-- <div class="col-8 col-12-medium">


						

					</div> -->
				<!-- </div>-->
			</div>
		</div>

		<!-- Footer -->
		<!-- <footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands alt fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
				<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
				<li><a href="#" class="icon solid alt fa-envelope"><span class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer> -->
		<footer id="footer" style = "background: transparent;">
					<ul class="icons">
						<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands alt fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands alt fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon brands alt fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands alt fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon solid alt fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/clock.js"></script>
	<script src="assets/js/weather.js"></script>
	<script src="assets/js/bg.js"></script>

</body>

</html>