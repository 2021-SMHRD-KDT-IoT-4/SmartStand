<%@page import="com.model.MemberDTO"%>
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
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

	<style>
	
	form div {
			width: 40%;
			float: left;
			padding: 1em;
		}
	</style>

</head>


<body class="is-preload">

	<%
		//로그인을 했을 때 저장한 session 값 불러오기
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
		%>
	
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
						<ul>
						
							
								<%if(info==null){%>
										
						
							<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">Mypage</a>
								<ul>
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 0px;">Login</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Join</a></li>
							<%}else{%>
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">Mypage</a>
								<ul>
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="LogoutServireCon.do" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
								<%}%>	
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<div>
							<section>
								<header class="major">
									<h2>문의사항</h2>
									
								</header>
							</section>
						</div>
						<!-- Table -->
							<section>
								<h3>문의목록</h3>
								<div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th>번호</th>
												<th>이름</th>
												<th>메세지</th>
												<th>시간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>번호</td>
												<td>이름</td>
												<td>메세지</td>
												<td>작성일자</td>
											</tr>
											
										</tbody>
										
									</table>
								</div>
								<h4>문의작성</h4>
								
								<div class="table-wrapper">
									<form action="MessageServiceCon.do" method="post">
										
										<div>
											<label>name</label>
											<input type="text" id="sedname" placeholder="보내는사람 이름" name="sedname">
										</div>
										
										<div>
											<label >Email</label>
											<input type="text" id="myEmail" pl name="myEmail">
										</div>
										<div>
											<label >Message</label>
											<textarea rows="4" id="Message" name="Message"></textarea>
										</div>
										<div></div>
										<div>
										<ul style = "padding-left: 50px; margin-top: 9px;">
											<il>
												<input type="submit" value="Send Message">
											</il>
											<il>
												<input type="submit" value="Clear" style="margin-left: 40px;">
											</il>
										</ul>
									</div>
										
									</form>
								</div>
							</section>
					</div>
				</div>

			<!-- Footer -->
				<footer id="footer">
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



</body>
</html>