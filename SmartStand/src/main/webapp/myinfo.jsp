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
</head>
<body class="is-preload">

	<%
		//�α����� ���� �� ������ session �� �ҷ�����
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
		
		%>

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
								<%if(info==null){%>
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="#" class="button primary" style="padding-left: 0px; padding-right: 20px;" >Login</a></li>
							<%}else{%>
							<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="LogoutServireCon.do" class="button primary" style="padding-left: 0px; padding-right: 20px;" >Logout</a></li>
							<%}%>		
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>������</h2>
						</header>

						<!-- Table -->
							<section>
<!-- 								<h3 align="center">�� ����</h3>
 -->								<div class="table-wrapper" align="center">
									<table >
										<tbody >
										
										<%if(info==null){%>
										
											<tr>
												<td>�̸�</td>
												<td>-</td>
												
											</tr>
											<tr>
												<td>��ȭ��ȣ</td>
												<td>-</td>
											
											</tr>
											<tr>
												<td>Email</td>
												<td>-</td>
											
											</tr>
											<tr>
												<td>�ּ�</td>
												<td>-</td>
											</tr>
											<%}else{%>
											<tr>
												<td>�̸�</td>
												<td><%=info.getName() %></td>
												
											</tr>
											<tr>
												<td>��ȭ��ȣ</td>
												<td><%=info.getTel()%></td>
											
											</tr>
											<tr>
												<td>Email</td>
												<td><%=info.getEmail() %></td>
											
											</tr>
											<tr>
												<td>�ּ�</td>
												<td><%=info.getAddr() %></td>
											</tr>
												<%}%>	
										</tbody>
										
										<tfoot>
											<tr>
												<td colspan="2"></td>
											</tr>
										</tfoot>
									</table>
									<p><input type="submit" value="������������"></p>
								</div>
							</section>
					</div>
				</div>

			<!-- Footer -->
				<footer id="footer">
					<!-- 
					<ul class="icons">
						<li><a href="#" class="icon brands alt fa-twitter"><span class="label">Twitter</span></a></li>
					</ul>
					 -->
					 <!-- 
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
					-->
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