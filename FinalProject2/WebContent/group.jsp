<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강아지 종류</title>
<link rel="stylesheet" href="css/main.css">
<style type="text/css">


div#s_left {

width:380px;

height: 600px;

background-color: yellow;

margin-left: 10px;


float:left;


}

#contents {

width:380px;

height: 600px;

background-color: green;

float:left;

margin-left: 20px;

margin-right: 20px;
}

#s_right {

width:380px;

height: 600px;

background-color: red;

margin-right: 10px;

float:left;


}

.img_shadow:hover{
	box-shadow: 10px 10px 10px gray;
	blur: 15px;
	
}
</style>

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
         
         
  		<br><br><br><br><br><br>
	

		
		<br><br><br><br>
		
		

	<!-- 강아지 품종별 3분류 -->
<div id="s_left" class="img_shadow"><a href="dgroup_s.jsp"> 
<img src="imgs/group/dog_s.png"></a></div>

<div id="contents"  class="img_shadow"><a href="dgroup_m.jsp">
<img src="imgs/group/dog_m.png"></a></div>

<div id="s_right" class="img_shadow"><a href="dgroup_l.jsp">
<img src="imgs/group/dog_l.png"></a></div>

		
		
		
		
		
		
	
	
		
	
		  
	
		
		




			
	</div>
			<div id="footermain">
		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
         <a class="top-btn" href="#mainFrame">TOP</a>
         
   <script>
/*    		var img_shadow = document.getElementById('img_shadow');
   		img_shadow.addEventListener('mouseover', function(){
   			img_shadow.shadowColor = "black";
   			img_shadow.shadowBlur = 5;
   		}) */
   	/* 	
   		$('img_shadow').hover(function(){
   			$(this).css('box-shadow','5px 5px 5px 5px black')
   		}) */
   </script>
</body>
</html>