<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
		<!-- //////////////////////////////// -->
		
			<style>
		#table{
			text-align: center;
		}
        .login_btn {
            background-color: #1f1919 !important;
            color: #fff !important;
            font-size: 30px !important;
            
        }

        #title {
            font-size: 60px !important;
            color: white !important;
            margin-top: 50px;
        }

        .a {
            text-decoration-line: none;
        }

        .input {
            width: 400px;
            height: 50px;
            font-size: 20px  !important;
			border-color: black !important;
			color: black !important;
			padding-top: 25px !important;
			border: solid 0px !important;
        }

        .b {
            vertical-align: top;
            padding-right: 10px;
            width: 400px;
			color: black !important;
        }

        .c {
            vertical-align: top;
            padding-left: 10px;
            width: 400px;
            font-size: 30 !important;
			color: black !important;
        }

        #d {
            font-size: 18px !important;
            text-decoration-line: none !important;
            color: white !important;
        }

        #e {
            font-size: 18px !important;
            text-decoration-line: none !important;
            color: white !important;
        }

        /* ///////////////////////////////////////////// */

        .is-preload landing{
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif !important;
        }
        #open {
            all: unset;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
			width: 30px;
        }
         #logout {
            all: unset;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
			width: 80px;
        }
        #open2 {
            all: unset;
            border-radius: 5px;
            cursor: pointer;
			width: 50px;
        }

        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
             z-index: 900;
        }

        .modal_overlay {
            background-color: rgba(0, 0, 0, 0.6) !important;
            width: 100%;
            height: 100%;
            position: absolute;
			opacity: inherit;
        }

        .modal_content {
            position: relative;
            top: 0px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
            padding: 0px 40px;
            text-align: center;
            width: 30%;
            z-index: 1300;
			margin-bottom: 10%;
        }

        .hidden {
            display: none;
			background-color: rgba(255, 255, 255, 0.842);;
        }
	</style>
		
		<!-- ///////////////////////////////// -->
</head>
<body class="is-preload landing">

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
							
							<%
						if(info==null){
						%>
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.html">내 정보</a></li>
									<li><a href="myset.html">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.html">Q&A</a></li>
							
							<li><button id = "open" style = "z-index: 1500;" >Login</button></li>
							<li><button id = "open2" style = "z-index: 1500;" >Join</button></li>
							<%
							} else{%>
								
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.html">내 정보</a></li>
									<li><a href="myset.html">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.html">Q&A</a></li>
							
							<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
									
							<%}%>	
							
							
						
							
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<h2>SmartStand</h2>
							<p>Bing Your Umbrella<br/>
								With You</p>
						</header>
						
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>
				</section>

			<!-- One -->
				<section id="one" class="spotlight style1 bottom">
					<span class="image fit main"><img src="images/pic09.jpg" alt="" /></span>
					<div class="content">
						<div class="container">
							<div class="row">
								<div class="col-4 col-12-medium">
									<header>
										<h2></h2>
										<p> </p>
									</header>
								</div>
								<div class="col-4 col-12-medium">
									<p>Feugiat accumsan lorem eu ac lorem amet sed accumsan donec.
									Blandit orci porttitor semper. Arcu phasellus tortor enim mi
									nisi praesent dolor adipiscing. Integer mi sed nascetur cep aliquet
									augue varius tempus lobortis porttitor accumsan consequat
									adipiscing lorem dolor.</p>
								</div>
								<div class="col-4 col-12-medium">
									<p>Morbi enim nascetur et placerat lorem sed iaculis neque ante
									adipiscing adipiscing metus massa. Blandit orci porttitor semper.
									Arcu phasellus tortor enim mi mi nisi praesent adipiscing. Integerl
									mi sed nascetur cep aliquet augue varius tempus. Feugiat lorem
									ipsum dolor nullam.</p>
								</div>
							</div>
						</div>
					</div>
					<a href="#two" class="goto-next scrolly">Next</a>
				</section>

			<!-- Two -->
				<section id="two" class="spotlight style2 right">
					<span class="image fit main"><img src="images/pic03.jpg" alt="" /></span>
					<div class="content">
						<header>
							<h2>Interdum amet non magna accumsan</h2>
							<p>Nunc commodo accumsan eget id nisi eu col volutpat magna</p>
						</header>
						<p>Feugiat accumsan lorem eu ac lorem amet ac arcu phasellus tortor enim mi mi nisi praesent adipiscing. Integer mi sed nascetur cep aliquet augue varius tempus lobortis porttitor lorem et accumsan consequat adipiscing lorem.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</div>
					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight style3 left">
					<span class="image fit main bottom"><img src="images/pic04.jpg" alt="" /></span>
					<div class="content">
						<header>
							<h2>Interdum felis blandit praesent sed augue</h2>
							<p>Accumsan integer ultricies aliquam vel massa sapien phasellus</p>
						</header>
						<p>Feugiat accumsan lorem eu ac lorem amet ac arcu phasellus tortor enim mi mi nisi praesent adipiscing. Integer mi sed nascetur cep aliquet augue varius tempus lobortis porttitor lorem et accumsan consequat adipiscing lorem.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>z
				</section>

		</div>






<form action = "LoginServiceCon.do">
	<div class="modal hidden" align = "center" >
		<div class="modal_overlay"></div>
		<div class="modal_content">
			<table width="100%" align="center" style="margin-top: 100px;" id="table">
				<tr height="150px" style="background-color: rgba(255, 255, 255, 0);">
					<td colspan="2" align="center"><a href="main" class="a" >
						<h1 id="title">스마트우산꽂이</h1>
					</a></td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >ID<input type="text" name = "id" placeholder="ID를 입력해주세요" class="input" height="70px" >
				</td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >PW<input type="text" name = "pw" placeholder="PW를 입력해주세요" class="input"></td>
			</tr>
			<tr height="50px"style="background-color: rgba(255, 255, 255, 0);">
				<td class="b" align="center" ><a href="" id="d" >ID/PW찾기</a></td>

				<td class="c"><a href="Join.html" id="e" >회원가입</a></td>
			</tr>
			<tr height="70px" align="center"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2"><input type="submit" value="Login" class="login_btn" ></td>
			</tr>

		</table>
		
		<button>X</button>
	</div>
	</div>
	</form>

	<script src="assets/js/jquery.min.js"></script>
	<script>
		const openButton = document.getElementById("open");
		const modal = document.querySelector(".modal");
		const overlay = modal.querySelector(".modal_overlay");
		const closeBtn = modal.querySelector("button");

		const openModal = () => {
			modal.classList.remove("hidden", "display:block")
			$('#banner').css('-webkit-filter', 'blur(0.5em)');
			$('#banner').css('filter','blur(0.5em)');
			$('#nav').css('-webkit-filter', 'blur(0.5em)');
			$('#nav').css('filter','blur(0.5em)');
			
		}
		const closeModal = () =>{
			modal.classList.add("hidden", "display:none");
			$('#banner').css('-webkit-filter', 'none');
			$('#banner').css('filter','none');
			$('#nav').css('-webkit-filter', 'none');
			$('#nav').css('filter','none');
		}
		overlay.addEventListener("click",closeModal);
		closeBtn.addEventListener("click",closeModal);
		openButton.addEventListener("click",openModal);


	</script>



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