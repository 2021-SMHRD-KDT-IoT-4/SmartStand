<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
			float: left;
			padding: 1em;
		}
	
	a {
			text-decoration:none !important;
	  } 
	
	.modal_content {
            position: absolute;
            top: 0px;
            box-shadow: 0 10px 200px rgba(255, 255, 255, 0.19), 0 6px 6px rgba(255, 255, 255, 0.23);
            padding: 0px 40px;
            text-align: center;
            width: 600px;
            z-index: 1500;
			margin-top: 10%;
			margin-left: 650px;
			
        }
         #title {
            font-size: 60px !important;
            color: white !important;
            margin-top: 50px;
        }
	</style>
	
	
</head>


<body class="is-preload" style="background: transparent;">

	<%
		//로그인을 했을 때 저장한 session 값 불러오기
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
							<li><a href="weather.jsp">Weather</a></li>
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
							<li><a href="weather.jsp">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							<li><a href="LogoutServireCon.do" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
								<%}%>	
							
						</ul>
					</nav>
				</header>


<form action = "LoginServiceCon2.do">
	<div class="modal hidden" align = "center" >
		<div class="modal_overlay"></div>
		<div class="modal_content">
			<table width="100%" align="center" style="margin-top: 0px; margin-bottom: 0px; border-collapse: unset;" id="table ">
				<tr height="150px" style="background-color: rgba(255, 255, 255, 0);">
					<td colspan="2" align="center"><a href="main" class="a" >
						<h1 id="title">스마트우산꽂이</h1>
					</a></td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >ID<input type="text" name = "id" placeholder="ID를 입력해주세요" class="input" height="70px" >
				<hr style = "margin-top: 0px; margin-bottom: 0px;">
				</td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >PW<input type="text" name = "pw" placeholder="PW를 입력해주세요" class="input">
				<hr style = "margin-top: 0px; margin-bottom: 0px;">
				</td>
				
			</tr>
			<tr height="50px"style="background-color: rgba(255, 255, 255, 0);">
				<td class="b" align="center" ><a href="" id="d" >ID/PW찾기</a></td>

				<td class="c"><a href="Join.html" id="e" >회원가입</a></td>
			</tr>
			<tr height="70px" align="center" style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2"><input type="submit" value="Login" class="login_btn" ></td>
			</tr>

		</table>
		
		<button style = "border-color: transparent; background-color: transparent;"></button>
	</div>
	</div>
	</form>



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