<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/slider.css">
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" style="position: fixed; !important">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
			
				<section id="banner">
					<div class="content">
						<header>
							<h2>Setting</h2>
							<p>music&coloerSet</p>
							
						</header>
						
					</div>
					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- One -->

			<!-- Two -->
				<!-- <section id="two" class="spotlight style2 right">




					<a href="#three" class="goto-next scrolly">Next</a>
				</section> -->

			<!-- Three -->
				<section id="three" class="spotlight style3 left">

					
					<div style = "width: 30%; margin-left: 35%; margin-top: 10%; ">
						<h1 style="font-size: 25px; text-align: center;">소리설정</h1>
						<span>Voice</span>
						<select>
							<option>남성</option>
							<option>여성</option>
						</select>
						<br>
						<span>Song</span>
						<select>
							<option>금요일에만나요</option>
							<option>라일락</option>
							<option>가을아침</option>
						</select>
						<br>
						<span>Asmr</span>
						<select>
							<option>비소리</option>
							<option>건물무너지는소리</option>
							<option>새소리</option>
						</select>
						<audio src="lilac.mp3/lilac.mp3" controls="controls" ></audio>
						<br>
						
						<input style="margin-left: 40%;" type="submit" value="확인">
					</div>
					<a href="#banner" class="goto-next scrolly">Next</a>
				</section>
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

	</body>
</html>