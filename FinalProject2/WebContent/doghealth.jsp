<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>멍냥이-건강</title>
<link rel="stylesheet" href="css/doghealth.css">
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
		강아지 건강
		</span>
		<br>
		<hr>
		
		<br>
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px;">
		<a href="https://mypetlife.co.kr/97927/"><img src= "imgs/dog/dog4.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/97927/">강아지 구토 유도, 과산화수소로 하면 안 되는 이유는?</a></h2>
				<p class="post-excerpt">포도나 초콜릿 같은 음식은 강아지에게 중독 증상을 일으킬 수 있어 매우 위험합니다. 그래서 이런 음식을 강아지가 먹은 경우, 응급 처치로 …</p>
				
			</div>	
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/9221/"><img src= "imgs/dog/dog3.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/9221/">강아지한테 절대 주면 안되는 음식은?</a></h2>
				<p class="post-excerpt">나를 졸졸 쫓아다니며 먹을 것을 달라고 조르는 반려견의 모습을 보면서 우리는 고민에 빠진다. ‘이 음식 줘도 될까?’ 수많은 종류의 음식이 있는데, 일일이 외울 수도 없는 노릇이다. 매번 헷갈린다면, 강아지가 먹어서는 안 되는 성분을 기억하자…</p>
				
			</div>
			
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/190/"><img src= "imgs/dog/dog7.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/190/">강아지 예방접종에 대한 모든것!</a></h2>
				<p class="post-excerpt">사람도 태어나면 주기적으로 예방접종을 맞듯이, 강아지에게도 정해진 예방접종 스케줄이 있다. 강아지에게 필수로 맞춰야 하는 예방접종과 접종주기에 대해 알아보자. 또한, 한국과 미국의 권장 접종기간을 비교하고, 그 배경을 알아보도록 하자...</p>
				
			</div>
						<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/premium/%ea%b0%95%ec%95%84%ec%a7%80-%ec%95%8c%eb%a0%88%eb%a5%b4%ea%b8%b0-%ec%a6%9d%ec%83%81%ea%b3%bc-%ec%9b%90%ec%9d%b8%ec%97%90-%eb%94%b0%eb%a5%b8-%ea%b4%80%eb%a6%ac%eb%b2%95%ec%9d%80/"><img src= "imgs/dog/dog6.jpg" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/premium/%ea%b0%95%ec%95%84%ec%a7%80-%ec%95%8c%eb%a0%88%eb%a5%b4%ea%b8%b0-%ec%a6%9d%ec%83%81%ea%b3%bc-%ec%9b%90%ec%9d%b8%ec%97%90-%eb%94%b0%eb%a5%b8-%ea%b4%80%eb%a6%ac%eb%b2%95%ec%9d%80/">강아지 알레르기 증상을 알아보자!</a></h2>
				<p class="post-excerpt">강아지 알레르기. 사람 알레르기와 마찬가지로 강아지 알레르기도 단번에 고쳐지는 질병이 아니에요. 특히, 원인이 제각각이라서 하나하나 테스트하면서 증상이 나아지는지 보는 데 시간이 걸려요. 하지만 원인이 파악되면 그것만 잘 피해서 생활하면 되기 때문에 관리가 아주 어렵지는 않아요...</p>
				
			</div>
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/34771/"><img src= "imgs/dog/dog5.jpg" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/34771/">강아지 목욕주기 및 유의사항!</a></h2>
				<p class="post-excerpt">강아지의 피부와 털 관리를 위해서 목욕은 필수다. 특히, 털이 많은 종이라면 목욕을 시키면서 평소에는 못 보았던 피부의 상처나 벼룩, 염증과 같은 이상신호도 발견할 수 있다. 그렇다면, 강아지 목욕 주기 관련해서는 어떨까? 피부가 약하기 때문에 사람처럼 자주 하지는 않아도 된다고 하는데, 어느 정도가 적당한 것일까?...</p>
				
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