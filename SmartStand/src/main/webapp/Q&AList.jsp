<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
			float: left;
			padding: 1em;
		}
	
	</style>
	
	
</head>


<body class="is-preload" style="background: transparent;">

	<%
		//�α����� ���� �� ������ session �� �ҷ�����
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
			BoardDAO dao = new BoardDAO();
			ArrayList<BoardDTO> list = dao.showBoard();
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
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 0px;">Login</a></li>
							<li><a href="#" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Join</a></li>
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
									<h2>Q&A</h2>
									
								</header>
							</section>
						</div>
						<!-- Table -->
							<section>
							<h3>List</h3>
									<div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th>��ȣ</th>
												<th>�̸�</th>
												<th>�з�</th>
												<th>����</th>
												<th>����</th>
												<th>�ð�</th>
												<th>�亯����</th>
											</tr>
											</thead>
											
												<tbody>
												<% for(int i = 0; i<list.size(); i++){ %>
													<tr>
														<td><%=i+1 %></td>
														<td><%=list.get(i).getQtitle() %></td>
														<td><%=list.get(i).getCategory() %></td>
														<td><%=list.get(i).getId() %></td>
														<td><%=list.get(i).getMessage() %></td>
														<td><%=list.get(i).getDay() %></td>
														<td>
														<% if(list.get(i).getAnwser()==null){
															%>�亯��<%
														}else{
															%>�亯�Ϸ�<%
														}%></td>
													</tr>
													<%} %>						
												</tbody>
																		
												</table>
									</div>
									<a href="Question.jsp" style="text-decoration: none !important;"><input type="button" value="�ۼ��ϱ�"></a>
									<a href="main.jsp" style="text-decoration: none !important;"><input type="button" value="�ڷΰ���"></a>
							</section>
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