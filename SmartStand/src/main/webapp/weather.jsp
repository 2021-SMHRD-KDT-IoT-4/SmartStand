<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html style="background-size: cover; background-image: url(images/weather.jpg); background-repeat: no-repeat;
    background-position: center;">

<head>
	<title>Right Sidebar - Landed by HTML5 UP</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
		<style>
		
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
		
		#table{
	
		text-align: center;
		}
        /* .login_btn {
            color: #fff !important;
            font-size: 30px !important;
        } */

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
			color: rgba(255,255,255,0.75) !important;
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
        
        
        .modal1 {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
             z-index: 900;
        }

        .modal_overlay1 {
            background-color: rgba(0, 0, 0, 0.6) !important;
            width: 100%;
            height: 100%;
            position: absolute;
			opacity: inherit;
        }

        .modal_content1 {
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
        
        .input1 {
			
			height: 2.7em !important;
			background-color: rgba(255, 255, 255, 0) !important;
		        
        }
	
		
       
    
    
		</style>
</head>

<body class="is-preload" style="background: transparent;">

	<%
		//로그인을 했을 때 저장한 session 값 불러오기
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
			
		
		%>
		
	
	
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" style="background: rgba( 255, 255, 255, 0.1 );">
			<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
			<nav id="nav">
				<ul>
					<%
						if(info==null){
						%>
								<li><a href="main.jsp">Main</a></li>
							
							<li><a href="weather.jsp">Weather</a></li>
 							<li><a href="Q&AList2.jsp">Q&A</a></li>
						
							<li><button id = "open" style = "z-index: 2000;" >Login</button></li>
							<li><button id = "open2" style = "z-index: 2000;" >Join</button></li>
							<%
							} else if(info.getId().equals("admin")){%>
								

										<li><a href="main.jsp">Main</a></li>							
										<li><a href="weather.jsp">Weather</a></li>
										<li><a href="AdminQ&A.jsp">Q&A</a></li>							
										<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
										<%
							}else{
							%>							
								
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.jsp">내 정보</a></li>
									<li><a href="myset.jsp">개인 설정</a></li>
								</ul>
							</li>
							<li><a href="weather.jsp">Weather</a></li>
							<li><a href="Q&AList.jsp">Q&A</a></li>
							
							<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
									
							<%}%>	
							
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main" class="wrapper style1" style="padding-top: 50px !important;
    padding-bottom: 100px !important;">
			<div class="container">
				<header class="major" style="
    margin-bottom: 0px;">
					<h2>날씨정보</h2>
					<p>Happy day, Please cherish your time.</p>
					<p>Check out today's weather.</p>

					<meta charset="utf-8">
					<title>Weather App - JavaScript</title>
					<link rel="stylesheet" href="font/Rimouski.css">
					<link rel="stylesheet" href="style.css">


				</header>

				<section id="content">

					<div class="js-clock">
						<h1>00:00</h1>
					</div>
					<div class="js-weather">

					</div>
				<!--Weather-->

					<div class="container">
						<div class="app-title">
							<p>현재 날씨</p>
						</div>
						<div class="notification"> </div>
						<div class="weather-container" style="box-shadow: 0 0 5em 0 rgb(0 0 0 / 50%); background-color: rgba(255,255,255,0.7)">
							<div class="weather-icon">
								<img src="images/unknown.png" alt="">
							</div>
							<div class="temperature-value">
								<p>- °<span>C</span></p>
							</div>
							<div class="temperature-description">
								<p style="font-weight: bold;"> - </p>
							</div>
							<div class="location">
								<p style="font-weight: bold;">-</p>
							</div>
						</div>
					</div>


				</section>

			</div>
		</div>

		<form action = "LoginServiceCon.do">
	<div class="modal hidden" align = "center" >
		<div class="modal_overlay"></div>
		<div class="modal_content">
			<table width="100%" align="center" style="margin-top: 160px; margin-bottom: 0px; border-collapse: unset;" id="table ">
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
	
	
	<form action = "JoinServiceCon.do">
	<div class="modal1 hidden" align = "center" >
		<div class="modal_overlay1"></div>
		<div class="modal_content1">
			 <table width="800px"  align="center" style="margin-top: 70px; margin-bottom: 0px; border-collapse: unset;">
            
            <tr height="130px" style="background-color: rgba(255, 255, 255, 0);" >
                <td  align="center"><h1 id="title">회원가입</h1></td>
            </tr>
            <tr>
                <td  align="center"><input type = "text" placeholder ="ID를 입력해주세요" class="input1" height="70px" name="id"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);">
                <td  align="center"><input type = "text" placeholder ="PW를 입력해주세요" class="input1" height="70px" name="pw"></td>
            </tr>
            <tr>
                <td  align="center"><input type = "text" placeholder ="NAME를 입력해주세요" class="input1" height="70px" name="name"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);">
                <td  align="center"><input type = "text" placeholder ="Tel을 입력해주세요" class="input1" height="70px" name="tel"></td>
            </tr>
            <tr>
                <td align="center"><input type = "text" placeholder ="Addr를 입력해주세요" class="input1" height="70px" name="addr"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);"> 
                <td align="center"><input type = "text" placeholder ="Email를 입력해주세요" class="input1" height="70px" name="email"></td>
            </tr>
            <tr height="100px"align="center" style="background-color: rgba(255, 255, 255, 0);">
                <td colspan ="2"><input type = "submit" value="Join" class = "join_btn"></td>
            </tr>
            
        </table>
		
		<button style = "border-color: transparent; background-color: transparent;"></button>
		
	</div>
	</div>
	</form>
	


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




	<script src="assets/js/jquery.min.js"></script>
	<script>
	
		document.getElementById("open").addEventListener("click",function(){
			const modal = document.querySelector(".modal");
			modal.classList.remove("hidden", "display:block")
			$('#nav').css('-webkit-filter', 'blur(0.5em)');
			$('#nav').css('filter','blur(0.5em)');
			$('#main').css('-webkit-filter', 'blur(0.5em)');
			$('#main').css('filter','blur(0.5em)');
		})
		
		document.getElementById("open1").addEventListener("click",function(){
			const modal = document.querySelector(".modal");
			modal.classList.add("hidden", "display:none");
			$('#nav').css('-webkit-filter', 'none');
			$('#nav').css('filter','none');
			$('#main').css('-webkit-filter', 'none');
			$('#main').css('filter','none');
		})
	</script>
	<script>
		const openButton = document.getElementById("open");
		const openButton1 = document.getElementById("open2");
		const modal = document.querySelector(".modal");
		const overlay = modal.querySelector(".modal_overlay");
		const modal1 = document.querySelector(".modal1");
		const overlay1 = modal1.querySelector(".modal_overlay1");
		const closeBtn = modal.querySelector("button");
		const closeBtn1 = modal1.querySelector("button");

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
			$('#main').css('-webkit-filter', 'none');
			$('#main').css('filter','none')
		}
		
		const openModal1 = () => {
			modal1.classList.remove("hidden", "display:block")
			$('#banner').css('-webkit-filter', 'blur(0.5em)');
			$('#banner').css('filter','blur(0.5em)');
			$('#nav').css('-webkit-filter', 'blur(0.5em)');
			$('#nav').css('filter','blur(0.5em)');
			$('#main').css('-webkit-filter', 'blur(0.5em)');
			$('#main').css('filter','blur(0.5em)');
			
		}
		const closeModal1 = () =>{
			modal1.classList.add("hidden", "display:none");
			$('#banner').css('-webkit-filter', 'none');
			$('#banner').css('filter','none');
			$('#main').css('-webkit-filter', 'none');
			$('#main').css('filter','none');
			$('#nav').css('-webkit-filter', 'none');
			$('#nav').css('filter','none');
		}
		overlay.addEventListener("click",closeModal);
		closeBtn.addEventListener("click",closeModal);
		openButton.addEventListener("click",openModal);
		overlay1.addEventListener("click",closeModal1);
		closeBtn1.addEventListener("click",closeModal1);
		openButton1.addEventListener("click",openModal1);

	</script>

	<!-- Scripts -->
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/clock.js"></script>
	<script src="assets/js/weather.js"></script>
	<script src="assets/js/bg.js"></script>

</body>

</html>