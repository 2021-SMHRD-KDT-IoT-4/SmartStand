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
		//�α����� ���� �� ������ session �� �ҷ�����
			MemberDTO info = (MemberDTO)session.getAttribute("login_info");
			
		
		%>


<div id="page-wrapper">

			<!-- Header -->
				<header id="header" style = "position: fixed; !important">
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
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							
							<li><button id = "open" style = "z-index: 1500;" >Login</button></li>
							<li><button id = "open2" style = "z-index: 1500;" >Join</button></li>
							<%
							} else{%>
								
								<li><a href="main.jsp">Main</a></li>
							<li>
								<a href="#">MyPage</a>
								<ul>
									<li><a href="myinfo.jsp">�� ����</a></li>
									<li><a href="myset.jsp">���� ����</a></li>
								</ul>
							</li>
							<li><a href="weather.html">Weather</a></li>
							<li><a href="Question.jsp">Q&A</a></li>
							
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
			<table width="100%" align="center" style="margin-top: 160px; margin-bottom: 0px; border-collapse: unset;" id="table ">
				<tr height="150px" style="background-color: rgba(255, 255, 255, 0);">
					<td colspan="2" align="center"><a href="main" class="a" >
						<h1 id="title">����Ʈ������</h1>
					</a></td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >ID<input type="text" name = "id" placeholder="ID�� �Է����ּ���" class="input" height="70px" >
				<hr style = "margin-top: 0px; margin-bottom: 0px;">
				</td>
			</tr>
			<tr height="120px"style="background-color: rgba(255, 255, 255, 0);">
				<td colspan="2" align="center" style = "color: white" >PW<input type="text" name = "pw" placeholder="PW�� �Է����ּ���" class="input">
				<hr style = "margin-top: 0px; margin-bottom: 0px;">
				</td>
				
			</tr>
			<tr height="50px"style="background-color: rgba(255, 255, 255, 0);">
				<td class="b" align="center" ><a href="" id="d" >ID/PWã��</a></td>

				<td class="c"><a href="Join.html" id="e" >ȸ������</a></td>
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
                <td  align="center"><h1 id="title">ȸ������</h1></td>
            </tr>
            <tr>
                <td  align="center"><input type = "text" placeholder ="ID�� �Է����ּ���" class="input1" height="70px" name="id"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);">
                <td  align="center"><input type = "text" placeholder ="PW�� �Է����ּ���" class="input1" height="70px" name="pw"></td>
            </tr>
            <tr>
                <td  align="center"><input type = "text" placeholder ="NAME�� �Է����ּ���" class="input1" height="70px" name="name"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);">
                <td  align="center"><input type = "text" placeholder ="Tel�� �Է����ּ���" class="input1" height="70px" name="tel"></td>
            </tr>
            <tr>
                <td align="center"><input type = "text" placeholder ="Addr�� �Է����ּ���" class="input1" height="70px" name="addr"></td>
            </tr>
            <tr style="background-color: rgba(255, 255, 255, 0);"> 
                <td align="center"><input type = "text" placeholder ="Email�� �Է����ּ���" class="input1" height="70px" name="email"></td>
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