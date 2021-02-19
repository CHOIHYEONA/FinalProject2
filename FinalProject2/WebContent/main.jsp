
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
							<li><a href="">훈련</a> </li>
							<li><a href="">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">고양이</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">건강</a> </li>
							<li><a href="cataction.jsp">행동</a> </li>
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
						<a href="http://localhost:8081/2021/main.jsp">커뮤니티</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<a href="http://localhost:8081/2021/main.jsp">샵 추천</a>
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
        <li><img src="imgs/main/middle/logo.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/logo.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/logo.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/logo.png" width="1200px" height="600px"></li>
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
                <span>강아지뉴스 </span>
               <a href="http://localhost:8081/2021/main.jsp">더보기</a>
            </div>
         </div>


         <!-- 강아지 컨텐츠 -->
         <div id="mainContents1">
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
       
       
           <!-- 고양이뉴스 타이틀 -->
         <div>
            <div>
                <span>고양이뉴스 </span>
               <a href="http://localhost:8081/2021/main.jsp">더보기</a>
            </div>
         </div>
         
         <!-- 고양이 컨텐츠 -->
         <div id="mainContents2">
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
           
             <!-- 인기 커뮤니티 타이틀 -->
         <div>
            <div>
                <span>인기 커뮤니티 </span>
               <a href="http://localhost:8081/2021/main.jsp">더보기</a>
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
       
                
       



		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			<div class="UnderBar1"></div>
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
	
	</div>

</body>
</html>