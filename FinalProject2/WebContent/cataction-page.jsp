
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
<style>




</style>

<link rel="stylesheet" href="css/cataction-page.css">
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
		<span style = "font-size:3em;">
		고양이가 심심할 때 보이는 행동 4가지
		</span>
		<br>
		<hr>
		
		<div id ="main-content">
			<p>&nbsp;고양이는 하루에 3분의 2를 거의 자면서 보내는데요. 물론 이렇게 잠을 자고 휴식을 취하는 시간은 고양이에게 매우 소중한 시간이예요. 하지만 매일 반복되는 일상은 고양이를 심심하게 할 수 있어요. 고양이가 심심할 때 보이는 행동을 알아 두고 적절한 대처를 해주도록 합시다!</p>
			<h2>고양이가 심심할 때 보이는 행동?</h2>
			<p>&nbsp;강아지와 달리 고양이는 산책이나 외출을 잘 하지 않기 때문에 대부분의 시간을 집에서 보내게 되죠. 그러다 보니 지루한 듯 누워있는 고양이를 보면 괜히 안쓰러운 마음이 들기도 합니다.</p>
			<h3>1. 집사를 방해한다</h3>
			<img src = "./imgs/cat/cat100.jpg">
			<p>집중해서 TV를 보고 있거나 책을 읽고, 컴퓨터나 핸드폰을 하고 있을 때 고양이가 눈 앞을 막거나 안긴 적이 있나요? 이렇게 집사를 방해하는 행동은 고양이가 심심하다는 의미일 수 있어요.</p>
			<p>특히 과산화수소 희석액을 권장량 이상 사용한다면 장기에 화상이나 궤양, 심하면 사망을 할 가능성도 있으니, 전문가의 처치를 받는 게 안전합니다. </p>
			<p>지루한 고양이가 집사에게 “나랑 놀자옹~”, “관심 좀 가져달라옹~” 하는 행동인 것이죠. 이럴 때에는 아무리 재미있는 걸 하고 있더라도 고양이에게 집중해주도록 해요! 우리 아이 귀여움 만큼 재밌는 게 어디 있나요?!</p>
			<h3>2. 그루밍을 너무 많이 해</h3>
			<img src = "./imgs/cat/cat101.jpg">
			<p>고양이는 깨끗한 환경을 좋아하는 만큼 스스로의 몸단장도 열심히 해요. 그래서인지 고양이가 그루밍을 하는 모습은 하루 중 빠지지 않고 하는 행동인데요. </p>
			<p>하지만 이런 그루밍도 너무 많이 한다면 고양이가 애정 결핍, 스트레스를 받고 있다는 뜻이라는 사실! 알고 계셨나요? 특히 집중적으로 한 부분만을 계속 핥거나, 털이 빠질 정도로 그루밍을 한다면 주의해야 해요!</p>
			<h3>3. 부르듯이 우는 소리</h3>
			<img src = "./imgs/cat/cat102.jpg">
			<p>고양이가 집사를 바라보며 “애옹! 애옹~” 하고 부르듯이 운다면 지금 심심하다는 의미일 수 있어요. 요구사항이 있을 때의 높고 긴 울음소리 보다는 다소 낮은 소리로 울곤 해요. </p>
			<p>집사와 눈이 마주치는 순간 울음소리를 멈추고 빤히 쳐다본다면 놀고 싶다는 신호일 가능성이 높아요. 부드럽게 이름을 부르거나 고양이를 쓰다듬어 주도록 합시다. </p>
			<h3>4. 주변을 맴돈다</h3>
			<img src = "./imgs/cat/cat103.jpg">
			<p>훌륭한 사냥꾼이었던 작은 맹수 우리 고양이는 야성의 습성 덕분에 주변을 순찰하는 습관이 있어요. 무엇인가 위험한 것은 없는지, 또는 천적은 없는지를 살피는 행동인 것이죠. </p>	
			<p>하지만 고양이가 같은 곳 주변을 어슬렁거린다면 심심하다는 뜻일 수 있어요. “뭔가 재밌는 것이 필요하다옹” 하며 주변을 관찰하는 것이죠. 맹수에게(?) 어울리는 사냥감(장난감)이 필요한 때일지도 모릅니다!</p>
			<h2>고양이가 심심할 때 어떻게 놀아주지?</h2>
			<p>집고양이들은 실내에서 생활하기 때문에 사냥을 할 필요가 없어졌는데요. 그러다 보니 에너지를 발산하기가 쉽지 않습니다. </p>
			<p>고양이가 심심함을 느끼는 시간이 길어지면 권태기가 오거나, 의욕이 떨어지고, 스트레스가 생기기 쉬워요. 캣타워나 캣스탭 같은 놀이기구를 설치하는 것도 좋지만 하루에 10분 이상은 반드시 집사가 직접 장난감으로 놀아줍시다.</p>
		
		
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
	  <a class="top-btn" href="#mainFrame">TOP</a>
			
			
			
			
</body>
</html>