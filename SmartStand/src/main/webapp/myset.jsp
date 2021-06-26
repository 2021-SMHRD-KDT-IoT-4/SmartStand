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

		
		<style>
		
		#one:before {
			content: '';
			display: inline-block;
			height: 100vh;
			vertical-align: middle;
			width: 1%;
		}
		
		#one .content {
			display: inline-block;
			margin-right: 1%;
			max-width: 95%;
			padding: 6em;
			position: relative;
			text-align: right;
			vertical-align: middle;
			z-index: 1;
		}
		
		#one{
		/* background-color: #272833;
		background-image: url("images/pic17.jpg");
		background-position: center center;
		background-size: cover;
		min-height: 100vh;
		position: relative; */
		text-align: center;
		z-index: 21;
		box-shadow: 0 0.25em 0.5em 0 rgba(0, 0, 0, 0.25);
				}
		
		
		body,#two,#three{
			/* background-color: #1c1d26; */
				background-image: url(images/pic17.jpg);
				background-size: cover;
				/* background-repeat: no-repeat; */
				/*background-position: bottom; */
				background-attachment: scroll;
		
		
		
		#two {
		
			background-size: cover; 
			background-repeat: no-repeat;
    		background-position: center;
		
			}
		
			
		
		</style>

</head>
<body class="is-preload landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" style="position: fixed; box-shadow: 0 0.25em 0.5em 0 rgba(0, 0, 0, 0.25); ">
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
							<li><a href="Q&AList.jsp">Q&A</a></li>
							<li><a href="login.html" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
			 
				<section id="one">
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
				<section id="two" class="spotlight right" >
						<div style=" margin-left:32%; margin-top: 10%; width: 35%; height: 45%; box-shadow: 3px 3px 24px 3px;" align="center">
		
						<p style="font-size: 35px; line-height: 3em "><strong>LED ON/OFF</strong></p>
						
						<br>
						<div>
						<select name="onoff" id="onoff" style="width: 30%; font-weight: bold;" >
							<option style="text-ailgn=center;">::: 전원선택 :::</option>
							<option value="1">OFF</option>
							<option value="0">ON</option>
						</select>
					</div>
					<br>
					<br>
					<div>
						<input type="button" id="btn" value="ON/OFF 해주세요." style="font-weight: bold;">
					</div>
				</div>
				<br>
					
					<!-- <div id="msg"></div> -->
					
				<div id="led"  align="center"></div> 


					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight left">

					
						<div style = "width: 30%; height:50%; margin-left: 35%; margin-top: 10%; box-shadow: 3px 3px 24px 3px;">
						<h1 style="font-size: 25px; text-align: center; line-height: 2em ">알림선택</h1>
						<div style="margin-left: 13%;">
							<input type="submit" value="voice">
							<input type="submit" value="song">
							<input type="submit" value="Asmr">
						</div>
						<br>
						<table>
							<thead>
								<tr>
									<th>장르</th>
									<th>제목</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>song</th>
									<th>금요일에만나요</th>
									<th><button>선택</button></th>
								</tr>
								<tr>
									<th>song</th>
									<th>라일락</th>
									<th><button>선택</button></th>
								</tr>
							</tbody>
						</table>
						<audio src="lilac.mp3/lilac.mp3" controls="controls" style="margin-left: 20%;"></audio>
						<br>
						
						<input style="margin-left: 40%;" type="submit" value="확인">
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>
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