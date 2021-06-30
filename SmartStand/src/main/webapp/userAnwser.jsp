<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="background-size: cover; background-image: url(images/rain22.jpg)">
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
		int num = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(num);
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.showOne(num);
	
	%>



	<%
		//로그인을 했을 때 저장한 session 값 불러오기
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
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.jsp">Weather</a></li>
							<li><a href="Q&AList2.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 0px;">Login</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Join</a></li>
							<%
							} else if(info.getId().equals("admin")){%>
										<li><a href="main.jsp">Main</a></li>							
										<li><a href="weather.jsp">Weather</a></li>
										<li><a href="AdminQ&A.jsp">Q&A</a></li>							
										<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
							<%}else{%>
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">Mypage</a>
								<ul>
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.jsp">Weather</a></li>
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
								<header class="major" style = "margin-bottom: 100px;">
								
									<h2>Anwser</h2>
									
								</header>
							</section>
							
							
							
							
							
							<table id="list" style="
    width: 600px !important;
    text-align: center;
    margin-left: 400px;">
					<tr>
						<td>분류</td>
						<td><%= dto.getCategory() %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><%= dto.getId() %></td>
						<%String fnum = dto.getId(); 
							HttpSession session0 = request.getSession();
							session0.setAttribute("num", fnum);
														%>
					</tr>
					<tr>
						<td >제목</td>
						<td><%= dto.getQtitle() %></td>
					</tr>
					<tr>
							<td >내용</td>
								<td><%= dto.getMessage() %></td>
					</tr>
					<tr>
							<td>답변</td>
								<td><%= dto.getAnwser() %></td>
					</tr>
						
				</table>
							
							<a href="Q&AList.jsp"><button style="
    background-color: transparent;
    color: white;
    border: 0;
    border-radius: 4px;
    box-shadow: inset 0 0 0 1px rgb(255 255 255 / 30%);
    padding: 10px;
    margin-left: 800px;
    cursor: pointer;
    width: 150px;
    height: 70px;
    font-size: inherit;">Back</button></a>
							
						</div>
						<!-- Table -->
					</div>
				</div>

			<!-- Footer -->
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



</body>
</html>