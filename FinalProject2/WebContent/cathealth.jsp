<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>고양이-건강</title>
<link rel="stylesheet" href="css/cathealth.css">
</head>
<body>

<%
customersVO info = (customersVO)session.getAttribute("info");
%>
   <div class="frame">

      <!---------- 페이지 상단 영역 ---------->
      <div class="topFrame">


         <!-- 최상단 영역 -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            
            <!-- 로그인성공시 -->
            <%if(info!=null){ %>
            <ul>
               <li><a href="logoutServiceCon"><img src="imgs/logout.png"></a></li>
               <li><a href="logout"><img src="imgs/mypage.png"></a></li>
            </ul>
			<%}else{ %>            
            <ul>
               <li><a href="login.jsp"><img src="imgs/login.png"></a></li>
               <li><a href="join.jsp"><img src="imgs/join.png"></a></li>
            </ul>
			<%} %>
         </div>



			<!-- 밑줄 디자인 -->
			<div class="UnderBar"></div>
			
			
          <!-- 카테고리 선택 목록 -->
			<div id="topMenu">
				<ul class="dep1">
					<li>
						<a href="doghealth.jsp">강아지</a>
						<ul class="dep2">
							<li><a href="doghealth.jsp">건강</a> </li>
							<li><a href="dogaction.jsp">행동</a> </li>
							<li><a href="dogtraining.jsp">훈련</a> </li>
							<li><a href="group.jsp">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">고양이</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">건강</a> </li>
							<li><a href="cataction.jsp">행동</a> </li>
							<li><a href="cattraining.jsp">훈련</a> </li>
							<li><a href="catgroup.jsp">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">장소</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">동물병원</a> </li>
							<li><a href="map_place.jsp">동반가능장소</a> </li>
							<li><a href="map_walk.jsp">산책로</a> </li>
						</ul>					
					</li>
					<li>
						<a href="board.jsp">커뮤니티</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<%if(info!= null){ %>
						<a href="calendar.html">캘린더</a>
						<%}else{ %>
						<a href="login.jsp" onclick = " alert('로그인을 해주세요');return false;">캘린더</a>
						<%} %>
						<ul class="dep2">
						
						</ul>					
					
					</li>					
					<li>
						<a href="shop2.jsp">펫 용품샵</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>
		
		      <!---------- 페이지 중간 영역 ---------->
      <div id="mainFrame">		
		
		<br><br><br><br><br><br><br><br><br>
		<span style = " font-size:3em; margin-left: 15px;">
		고양이 건강
		</span>
		<br>
		<hr>
		
		<br>
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px;">
		<a href="https://mypetlife.co.kr/98755/"><img src= "imgs/cat/cat6.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/98755/">고양이 스크래쳐 고르기, 반드시 필요한 이유?</a></h2>
				<p class="post-excerpt">고양이 스크래쳐, 고양이를 키우는 집에서는 반드시 있어야 하는 필수품 중 하나인데요. 종종 벽지나 소파, 커튼 등을 발톱으로 긁거나 뜯어 집사를 슬프게 하기도 합니다. 그렇다면 고양이는 왜 발톱으로 긁는 스크래칭을 하는 것일까요?…</p>
				
			</div>	
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/95819/"><img src= "imgs/cat/cat7.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/95819/">고양이 키울때 일어나는 안전사고 8가지는?</a></h2>
				<p class="post-excerpt">고양이를 키우는 집에서는 한순간의 방심이 큰 사고로 이어질 수 있어 항상 조심해야 하는데요. 겨울철은 난방기구를 사용하기 때문에 더욱 조심해야 합니다. 고양이 키울 때 자주 일어날 수 있는 안전 사고를 알아보고 주의하도록 합시다…</p>
				
			</div>
			
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/95437/"><img src= "imgs/cat/cat8.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/95437/">고양이 수명을 단축시키는 집사 행동 5가지는?</a></h2>
				<p class="post-excerpt">고양이를 키우는 보호자들은 모두 우리 고양이의 장수를 꿈꾸며 오래 함께하길 바란다. 고양이가 건강하게 장수하는 것은 보호자의 역할이 가장 중요할 것이다. 그런데 고양이 수명을 단축시키는 집사의 행동이 있다는 사실!...</p>
				
			</div>
						<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/92310/"><img src= "imgs/cat/cat9.png" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/92310/">고양이 심장사상충 증상, 치료 및 예방법은?</a></h2>
				<p class="post-excerpt">고양이 심장사상충은 강아지에 비해 감염 가능성이 낮다고 알려져 있다. 또한, 감염이 되더라도 유충이 고양이 체내에서 성장하기 힘들어 성충까지 자라는 경우도 2~10마리 정도이다. 따라서, 고양이 보호자들은 강아지 보호자에 비해 덜 걱정하게 된다...</p>
				
			</div>
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/87596/"><img src= "imgs/cat/cat10.png" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/87596/">고양이 비만 기분 , 우리 고양이는 정상 체충일까요?</a></h2>
				<p class="post-excerpt">말랑말랑 통통한 고양이의 뱃살, 만지는 것만으로도 하루의 피로가 가실만큼 사랑스럽다. 하지만 아무리 살이 쪄도 귀엽다 하더라도 고양이의 건강을 위해서는 적정 몸무게를 유지하는 것이 중요하다. 그렇다면 고양이 비만 측정 기준과 적정 몸무게, 그리고 이에 따른 일일 권장 칼로리를 알아보자...</p>
				
			</div>
			
			</div>
			
			
			
		</div>
			
	<div id="footermain">

	
		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
			
			
</body>
</html>