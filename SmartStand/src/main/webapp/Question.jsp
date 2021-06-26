<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="background-size: cover; background-image: url(images/rain21.jpg)">
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
			float: none;
			padding: 1em;
			margin-left: 30%;
		}
	</style>

</head>


<body class="is-preload" style="background: transparent;">

	<%
		//�α����� ���� �� ������ session �� �ҷ�����
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
		%>
	
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" id="header" style="background: transparent;">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
						<ul>
						
							
								<%if(info==null){%>
										
						
							<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">Mypage</a>
								<ul>
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.jsp">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 0px;">Login</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Join</a></li>
							<%
							} else if(info.getId().equals("admin")){%>
										<li><a href="main.jsp">Main</a></li>							
										<li><a href="weather.jsp">Weather</a></li>
										<li><a href="Question.jsp">Q&A</a></li>							
										<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
							<%}else{%>
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">Mypage</a>
								<ul>
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Q&AList.jsp">Q&A</a></li>
							<li><a href="LogoutServireCon.do" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
								<%}%>	
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1" style="padding-top: 50px;">
					<div class="container">
						<div>
							<section>
								<header class="major" style = "margin-bottom: 30px;">
								
									<h2>Questions</h2>
									
								</header>
							</section>
						</div>
						<!-- Table -->
							<section>
								
								<h4 style="margin-left: 43%;">Write Down Question</h4>
								
								<div class="table-wrapper" style="margin-top: 2%">
									<form action="MessageServiceCon.do" method="post">
										
										<div>
										
											<label>Title</label>
											<input type="text" id="Qtitle" placeholder="������ �����ּ���" name="Qtitle">
										</div>
										<div>
											<label>Category</label>
											<select name="category">
												<option>SELECT ��</option>
												<option>��ǰ����</option>											
												<option>��������</option>											
												<option>��Ÿ</option>											
											</select>
										</div>
										<div>
											<label >Message</label>
											<textarea rows="4" id="Message" placeholder="���ǳ����� �����ּ���" name="Message"></textarea>
										</div>
										<div></div>
										<div>
										<ul style = "padding-left: 50px; margin-top: 9px;">
											<il>
												<input type="submit" value="Send Message">
											</il>
											<il><form action = "Q&AList.jsp"><input type="submit" value="Back"></form></il>											
											
										</ul>
									</div>
										
									</form>
								</div>
							</section>
					</div>
				</div>

			<!-- Footer -->
				<footer id="footer" style = "background: transparent; ">
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