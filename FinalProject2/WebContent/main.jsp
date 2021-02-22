
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>멍냥이</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>


   <div class="frame">

      <!---------- 페이지 상단 영역 ---------->
      <div class="topFrame">


         <!-- 최상단 영역 -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            <ul>
               <li><a href="login.jsp">로그인</a></li>
               <li><a href="join.jsp">회원가입</a></li>
         
            </ul>
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
							<li><a href="dogtraining.html">훈련</a> </li>
							<li><a href="">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">고양이</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">건강</a> </li>
							<li><a href="cataction.jsp">행동</a> </li>
							<li><a href="cattraining.html">훈련</a> </li>
							<li><a href="">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">지도</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">동물병원</a> </li>
							<li><a href="">공공장소</a> </li>
							<li><a href="">산책로</a> </li>
						</ul>					
					</li>
					<li>
						<a href="board.jsp">커뮤니티</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					<li>
						<a href="board.jsp">캘린더</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>					
					<li>
						<a href="shop2.jsp">샵 추천</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>

      <!---------- 페이지 중간 영역 ---------->
      <div id="mainFrame">
      
         <div id="null">
              <!-- 다 바꾸기 귀찮아서 빈공백 -->
         </div>



         <!-- 메인 사진 영역 -->
<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><img src="imgs/main/middle/maindog.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/maincat.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/mainmap.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/mainborad.png" width="1200px" height="600px"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>


         <!-- 강아지뉴스 타이틀 -->
         <div>
            <div>
                <h3>강아지 </h3>
               <a href="doghealth.jsp">더보기</a>
            </div>
         </div>


         <!-- 강아지 컨텐츠 -->
         <div id="mainContents1">
            <div onclick="location.href='doghealth-page.jsp'">
               <img src="imgs/dog/dog4.jpg">
               <h5>강아지 구토 유도, 과산화수소로 하면 안 되는 이유는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog3.jpg">
               <h5>강아지한테 절대 주면 안되는 음식은?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog7.jpg">
               <h5>강아지 예방접종에 대한 모든것!</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog6.jpg">
               <h5>강아지 알레르기 증상을 알아보자!</h5>
            </div>
         
           </div>
       
       
           <!-- 고양이뉴스 타이틀 -->
         <div>
            <div>
                <h3>고양이 </h3>
               <a href="cathealth.jsp">더보기</a>
            </div>
         </div>
         
         <!-- 고양이 컨텐츠 -->
         <div id="mainContents2">
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat6.png">
               <h5>고양이 스크래쳐 고르기, 반드시 필요한 이유?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat7.png">
               <h5>고양이 키울때 일어나는 안전사고 8가지는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat8.png">
               <h5>고양이 수명을 단축시키는 집사 행동 5가지는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat9.png">
               <h5>고양이 심장사상충 증상, 치료 및 예방법은?</h5>
            </div>
         
           </div>
           
             <!-- 인기 커뮤니티 타이틀 -->
         <div>
            <div>
                <h3>커뮤니티 </h3>
               <a href="board.jsp">더보기</a>
            </div>
         </div>
         
         <!-- 인기 커뮤니티 컨텐츠 -->
         <div id="mainContents3">
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>제목</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>제목</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>제목</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>제목</h5>
            </div>
         
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