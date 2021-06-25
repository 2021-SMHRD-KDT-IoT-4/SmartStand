<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="background-size: cover; background-image: url(images/rain4.jpg)">
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
		
	#back{
		
		text-decoration: none;
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
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 0px;">Login</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Join</a></li>
							<%
							} else if(info.getId().equals("admin")){%>
										<li><a href="main.jsp">Main</a></li>							
										<li><a href="weather.html">Weather</a></li>
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
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
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
									<h2>Anwser</h2>
								</header>
							</section>
							<table id="list" style="width: 55%; margin-left: 22%">
					<tr>
						<td style="width:10em">분류</td>
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
						<td>제목</td>
						<td><%= dto.getQtitle() %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%= dto.getMessage() %></td>
					</tr>
				</table>
							
						</div>
						<!-- Table -->
							<section>
								
								<h4 style="margin-left: 43%;">write down anwser</h4>
								
								<div class="table-wrapper" style="margin-top: 2%">
									<form action="AnwserServiceCon.do" method="post">
										
										
										<div>
											<label >Anwser</label>
											<textarea rows="4" id="anwser" placeholder="답변내용을 적어주세요" name="anwser"></textarea>
										</div>
										<div></div>
										<div>
										<ul style = "padding-left: 50px; margin-top: 9px; margin-left: 5%; text-decoration: none;">
											<il>
												<input type="submit" value="Send Message">
											</il>
											<il>
												<a id="back" href="AdminQ&A.jsp"><input type="button" value="back"></a>
											</il>	
										</ul>
									</div>
										
									</form>
								</div>
							</section>
					</div>
				</div>

			<!-- Footer -->
				<footer id="footer" style = "background: transparent; background-color: rgb(35 28 29 / 15%);">
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