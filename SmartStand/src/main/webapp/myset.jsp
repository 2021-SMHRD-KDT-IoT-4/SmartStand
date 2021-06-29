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
		<link rel="stylesheet" href="assets/css/slider.css">
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

		
		<style>
		
		#one:before {
			content: '';
			display: inline-block;
			height: 100vh;
			vertical-align: middle;
			width: 1%;
		}
		
		#one .content {
			display: inline-block;
			margin-right: 1%;
			max-width: 95%;
			padding: 6em;
			position: relative;
			text-align: right;
			vertical-align: middle;
			z-index: 1;
		}
		
		#one{
		/* background-color: #272833;
		background-image: url("images/pic17.jpg");
		background-position: center center;
		background-size: cover;
		min-height: 100vh;
		position: relative; */
		text-align: center;
		z-index: 21;
		box-shadow: 0 0.25em 0.5em 0 rgba(0, 0, 0, 0.25);
				}
		
		
		body,#two,#three{
			/* background-color: #1c1d26; */
				background-image: url(images/pic25.jpg);
				background-size: cover;
				/* background-repeat: no-repeat; */
				/*background-position: bottom; */
				background-attachment: scroll;
		
		
		
		#two {
		
			background-size: cover; 
			background-repeat: no-repeat;
    		background-position: center;
		
			}
		
			
		
		</style>

</head>
<body class="is-preload landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" style="position: fixed; box-shadow: 0 0.25em 0.5em 0 rgba(0, 0, 0, 0.25); ">
					<h1 id="logo"><a href="main.jsp">SmartStand</a></h1>
					<nav id="nav">
						<ul>
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
							<li><a href="login.html" class="button primary" style=" padding-left: 0px; padding-right: 20px;">Logout</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
			 
				<section id="one">
					<div class="content">
						<header>
							<h2>Setting</h2>
							<p>music&coloerSet</p>
							
						</header>
						
					</div>
					<a href="#two" class="goto-next scrolly">Next</a>
				</section>

			<!-- One -->

			<!-- Two -->
				<section id="two" class="spotlight right" >
						<div style=" margin-left:32%; margin-top: 10%; width: 35%; height: 45%; box-shadow: 3px 3px 24px 3px;" align="center">
		
						<p style="font-size: 35px; line-height: 3em "><strong>LED ON/OFF</strong></p>
						
						<br>
						<div>
						<select name="onoff" id="onoff" style="width: 30%; font-weight: bold;" >
							<option style="text-ailgn=center;">::: 전원선택 :::</option>
							<option value="1">OFF</option>
							<option value="0">ON</option>
						</select>
					</div>
					<br>
					<br>
					<div>
						<input type="button" id="btn" value="ON/OFF 해주세요." style="font-weight: bold;">
					</div>
				</div>
				<br>
					
					<!-- <div id="msg"></div> -->
					
				<div id="led"  align="center"></div> 
	

					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight left">

					

						<div style = "width: 30%; height:61%; margin-left: 35%; margin-top: 10%; box-shadow: 3px 3px 24px 3px;">
					
						<h1 style="font-size: 25px; text-align: center; line-height: 2em ">알림선택</h1>
						<div style="margin-left: 13%;">
							<input type="submit" value="voice" onclick="voice()">
							<input type="submit" value="song" onclick="song()">
							<input type="submit" value="Asmr" onclick="Asmr()">
						</div>
						
						<br>
						
						<script src ="assets/js/jquery-3.6.0.min.js"></script>
						<script src="assets/js/jquery.min.js"></script>
						<script src="assets/js/jquery.scrolly.min.js"></script>
						<script src="assets/js/jquery.dropotron.min.js"></script>
						<script src="assets/js/jquery.scrollex.min.js"></script>
						<script src="assets/js/browser.min.js"></script>
						<script src="assets/js/breakpoints.min.js"></script>
						<script src="assets/js/util.js"></script>
						<script src="assets/js/main.js"></script>
						
						<script>
							function check(){
								var chk = true;
								//뭔진 모르겠지만 체크가 된건지 안된건지 확인하는 코드
								if($('input:radio[name="song"]:checked').length==0){
									chk=false;
								}
								if(chk){
									alert("선택완료");
								}else{
									alert("선택을하지않았습니다.");
								}
							}
							
							function song(){
								var song = new Array();
								var html = '';

								song.push({title : 'lilac' });
								song.push({title : 'dolphin'});
								song.push({title : 'rollin'});

								for(key in song){
     
									html += '<tr>';
									html += '<td>'+song[key].title+'<input class="songClass" type="radio" name="song" value="'+song[key].title+'" style="appearance: auto; opacity:1; /* float:right; */ margin-top : 9px; margin-right: 1em"> </td>';
									html += '</tr>';
								}

								$("#voiceTbody").empty();
								$("#asmrTbody").empty();
								$("#songTbody").empty();
								$("#songTbody").append(html);

							}

							function Asmr() {
								var asmr = new Array();
								var html ='';
								
								asmr.push({title : 'rain'});
								asmr.push({title : 'rain2'});
								asmr.push({title : 'lightning'})

								for(key in asmr){

									html += '<tr>';
									html += '<td>'+asmr[key].title+'<input class="asmrClass" type="radio" name="song" value="'+asmr[key].title+'" style="appearance: auto; opacity:1; /* float:right; */ margin-top : 9px; margin-right: 1em"> <td>';
									html += '</tr>';
								}

								$("#voiceTbody").empty();
								$("#songTbody").empty();
								$("#asmrTbody").empty();
								$("#asmrTbody").append(html);
							}	

							function voice() {
								var voice = new Array();
								var html ='';
								
								voice.push({title : '캐논'});
								voice.push({title : '고향의봄'});
								voice.push({title : '춘천의가을'})

								for(key in voice){

									html += '<tr>';
									html += '<td>'+voice[key].title+'<input class="voiceClass" type="radio" name="song" value="'+voice[key].title+'" style="appearance: auto; opacity:1; /* float:right; */ margin-top : 9px; margin-right: 1em"> <td>';
									html += '</tr>';
								}

								$("#songTbody").empty();
								$("#asmrTbody").empty();
								$("#voiceTbody").empty();
								$("#voiceTbody").append(html);
								
							}	
							
							$(document).ready(function() {
								$(document).on("change",".voiceClass",function(){
									
								 	 var radioValue = $(this).val(); 
									console.log(radioValue);
									if(radioValue === "캐논") {
										$("#audio").attr("src","music/Canon.mp3");
									}else if(radioValue === "고향의봄") {
										$("#audio").attr("src","music/spring.mp3");
									}else if(radioValue === "춘천의가을"){
										$("#audio").attr("src", "music/chuncaen.mp3");
									}
								});
							});
						
							
							$(document).ready(function() {
								$(document).on("change",".songClass",function(){
									
								 	 var radioValue = $(this).val(); 
									console.log(radioValue);
									if(radioValue === "lilac") {
										$("#audio").attr("src","music/lilac.mp3");
									}else if(radioValue === "dolphin") {
										$("#audio").attr("src","music/Dolphin.mp3");
									}else if(radioValue === "rollin"){
										$("#audio").attr("src", "music/Rollin.mp3");
									}
								});
							});
							
							$(document).ready(function() {
								$(document).on("change",".asmrClass",function(){
									
								 	 var radioValue = $(this).val(); 
									console.log(radioValue);
									if(radioValue === "rain") {
										$("#audio").attr("src","music/sounds_of_rain");
									}else if(radioValue === "rain2") {
										$("#audio").attr("src","music/sounds_of_rain2");
									}else if(radioValue === "lightning"){
										$("#audio").attr("src", "music/lightning.mp3");
									}
								});
							});
							
							
							
						</script>
						
							
						<table  id="song">
							<td>제목</td>
							<tbody id="songTbody">
							</tbody>
							<tbody id="asmrTbody">
							</tbody>
							<tbody id="voiceTbody">
							</tbody>
						</table>
						<audio src="" controls="controls" style="margin-left: 20%;" id = "audio"></audio>
						
						<br>
						
						
						<input style="margin-left: 40%;" type="button" onclick="check()" value="확인">
						
					</div>
					<a href="#one" class="goto-next scrolly">Next</a>
				</section>
		</div>

		<!-- Scripts -->
			

	</body>
</html>