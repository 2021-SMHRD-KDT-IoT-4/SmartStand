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
		body{
		
			background-image: url("images/pic09.jpg");
			
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
            text-decorat
            ion-line: none !important;
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
		
		<!-- ///////////////////////////////// -->
</head>
<body class="is-preload landing">

		<%
		//로그인을 했을 때 저장한 session 값 불러오기
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
		%>


<div id="page-wrapper">

			<!-- Header -->
				<header id="header" style = "position: fixed; !important">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
					
						<ul>
							
							<%if(info==null){%>
								<li><a href="main.jsp">Main</a></li>
							
							<li><a href="weather.jsp">Weather</a></li>
 							<li><a href="Q&AList2.jsp">Q&A</a></li>
						
							<li><button id = "open" style = "z-index: 1500;" >Login</button></li>
							<li><button id = "open2" style = "z-index: 1500;" >Join</button></li>
							<%} else if(info.getId().equals("admin")){%>
								

										<li><a href="main.jsp">Main</a></li>							
										<li><a href="weather.jsp">Weather</a></li>
										<li><a href="AdminQ&A.jsp">Q&A</a></li>							
										<li><a href = "LogoutServireCon.do" id = "logout">Logout</a></li>
										<%}else{%>							
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
					<span class="image fit main"><img src="images/pic03.jpg" alt="" /> </span>
					
						
						<img src="images/people.png" style="width: 300px; height: 300px;margin-left: 60px;margin-top: 200px;">
						<img src="images/line.png" style="width: 100px; height: 150px;margin-bottom: 100px;">
						<img src="images/computer.png" style="width: 300px; height: 300px;margin-left: 50px;margin-top: 100px;">
						<img src="images/line.png" style="width: 100px; height: 150px;margin-bottom: 100px;margin-left: 80px;">
						<img src="images/umbrella-stand.png" style="width: 300px; height: 300px;margin-top: 100px;">
						<img src="images/line.png" style="width: 100px; height: 150px;margin-bottom: 100px;">
						<img src="images/umbrella-stand3.png" style="width: 100px; height: 150px;margin-left: 50px;margin-top: 100px;">
						<img src="images/busineess.png" style="width: 200px; height: 300px;margin-left: 20px;margin-top: 100px;">
    					 
					
					<div class="content" style="background-color:  rgb(15 19 58 / 13%); border-color: #444a9869; padding: 5.1em 0 2.8em 0;">
						<div class="container">
							<div class="row">
								<!-- <div class="col-4 col-12-medium">
									<header>
										<h2></h2>
										<p></p>
									</header> -->
								</div>
								<div class="col-4 col-12-medium" style="margin-left: 25%; width: 31em; font-family: revert;">
									<h4 style="font-size: 1.4em;">Smart Stand</h4>
                           			<p>사용자가 홈페이지에서 원하는 노래와 조명을 선택 할 수 있습니다.<br>
                           				날짜, 시간, 온도등을 화면에 항상 보여주며,
                            			비가 오는 날에만 직접<br> 설정해 놓은 노래와 조명을 보여줍니다.
                           				바쁜 출근 시간에 우산을<br> 두고가서 다시 가지러 오는 번거로움을 Smart Stand로 날려버리죠!</p>
									

								</div>
								<!-- <div class="col-4 col-12-medium">

									<p></p>

									<p></p>

								</div> -->
							</div>
						</div>
					<a href
					="#two" class="goto-next scrolly">Next</a>
					</div>
				</section>

			<!-- Two -->
				<section id="two" class="spotlight style2 right">
					<span class="image fit main"><img src="images/pic03.jpg" alt="" /></span>
					
						<img src="images/2por.png" style = "height: 969px">
						
					<div class="content" style="background-color:  rgb(15 19 58 / 13%); border-color: #444a9869;">
						<header>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<h2>Led & Sound</h2>
							<p>사람을 인식하여 노래와 빛을 밝혀주는 똑똑한 우산꽂이</p>
						</header>
						<p>
A smart umbrella stand that recognizes people and illuminates songs and lights</p>
						<ul class="actions">
							<!-- <li><a href="#" class="button">Learn More</a></li> -->
						</ul>
					</div>
					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight style3 left">
					<span class="image fit main bottom"><img src="images/pic04.jpg" alt="" /></span>
					
						<img  src="images/2por2.png" style="height: 969px;width: 1800px;margin-left: 5%;">
					
					<div class="content" style="background-color:  rgb(15 19 58 / 13%); border-color: #444a9869;">
						<header>
							<br>
							<br>
							<br>
							<br>
							<br>
							<br>
							<h3 style="font-size: 31.5px">기상청 정보를 이용한 화면출력</h3>
							<br>
							<p>Smart Stand는 기상청정보를 이용하여
							화면에 시간과 날짜, 기온, 날씨를 보여줍니다. </p>
							<p>Smart Stand shows the time, date, temperature, and weather on the screen using weather information.</p>
						</header>
						<p></p>
						<ul class="actions">
							<li><a href="#" class="button" style=" margin-top: 250px;">Top</a></li>
						</ul>
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>z
				</section>

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
			<!-- 	<td class="b" align="center" ><a href="" id="d" >ID/PW찾기</a></td>

				<td class="c"><a href="join.jsp" id="e" >회원가입</a></td> -->
			</tr>
			<tr height="70px" align="center" style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2"><input type="submit" value="Login" class="login
				_btn" ></td>
			<!-- 	<td colspan="2"><input type="submit" value="join" class="join_go" ></td>
				 -->
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
	
	
	

	<script src="assets/js/jquery.min.js"></script>
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
		}
		
		const openModal1 = () => {
			modal1.classList.remove("hidden", "display:block")
			$('#banner').css('-webkit-filter', 'blur(0.5em)');
			$('#banner').css('filter','blur(0.5em)');
			$('#nav').css('-webkit-filter', 'blur(0.5em)');
			$('#nav').css('filter','blur(0.5em)');
			
		}
		const closeModal1 = () =>{
			modal1.classList.add("hidden", "display:none");
			$('#banner').css('-webkit-filter', 'none');
			$('#banner').css('filter','none');
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