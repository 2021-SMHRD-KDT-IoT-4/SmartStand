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
				<header id="header">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="login.html" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
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
					<a href="#two" class="goto-next scrolly">Next</a>
				</section>

			<!-- One -->

			<!-- Two -->
				<section id="two" class="spotlight style2 right" >
						<div style="margin-top: 20%;" align="center">
		
						<p style="font-size: 35px "><strong>LED ON/OFF</strong></p>
						
						<br>
						<div>
						<select name="onoff" id="onoff" style="width: 30%;" >
							<option style="text-ailgn=center;">::: �������� :::</option>
							<option value="1">OFF</option>
							<option value="0">ON</option>
						</select>
					</div>
					<br>
					<br>
					<div>
						<input type="button" id="btn" value="ON/OFF ���ּ���.">
					</div>
				</div>
				<br>
					
					<!-- <div id="msg"></div> -->
					
				<div id="led"  align="center"></div> 


					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight style3 left">

					
						<div style = "width: 30%; margin-left: 35%; margin-top: 10%;">
						<h1 style="font-size: 25px; text-align: center;">�˸�����</h1>
						<div style="margin-left: 10%;">
							<input type="submit" value="voice">
							<input type="submit" value="song">
							<input type="submit" value="Asmr">
						</div>
						<br>
						<table>
							<thead>
								<tr>
									<th>�帣</th>
									<th>����</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>song</th>
									<th>�ݿ��Ͽ�������</th>
									<th><button>����</button></th>
								</tr>
								<tr>
									<th>song</th>
									<th>���϶�</th>
									<th><button>����</button></th>
								</tr>
							</tbody>
						</table>
						<audio src="lilac.mp3/lilac.mp3" controls="controls" style="margin-left: 20%;"></audio>
						<br>
						
						<input style="margin-left: 40%;" type="submit" value="Ȯ��">
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