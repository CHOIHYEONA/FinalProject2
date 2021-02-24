<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고양이 종류 - 장모종</title>
<link rel="stylesheet" href="css/cgroup_long.css">
<style type="text/css">

div#s_left_1{

width:380px;

height: 450px;

background-color: red;

float:left;

margin-left: 10px;

margin-bottom: 20px;
}


#contents_1 {

width:380px;

height: 450px;

background-color: orange;

float:left;

margin-left: 20px;

margin-right: 20px;

margin-bottom: 20px;
}

#s_right_1 {

width:380px;

height: 450px;

background-color: yellow;

float:left;

margin-right: 10px;

margin-bottom: 20px;
}




div#s_left_2{

width:380px;

height: 450px;

background-color: green;

float:left;

margin-left: 10px;

margin-bottom: 20px;
}


#contents_2 {

width:380px;

height: 450px;

background-color: blue;

float:left;

margin-left: 20px;

margin-right: 20px;

margin-bottom: 20px;
}

#s_right_2 {

width:380px;

height: 450px;

background-color: purple;

float:left;

margin-right: 10px;

margin-bottom: 20px;
}





div#s_left_3{

width:380px;

height: 450px;

background-color: #7CFC00;

float:left;

margin-left: 10px;
}


#contents_3 {

width:380px;

height: 450px;

background-color: #4682B4;

float:left;

margin-left: 20px;

margin-right: 20px;
}

#s_right_3 {

width:380px;

height: 450px;

background-color: #FFC0CB;

float:left;

margin-right: 10px;
}











.img_shadow:hover{
	box-shadow: 10px 10px 10px gray;
	blur: 15px;
	
}
</style>

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
		장모종
		</span>
		<br>
		<hr>
		
		<br>
		
		

	<!-- 강아지 품종별  -->
<div id="s_left_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long01.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long02.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long03.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

<br><br>

<div id="s_left_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long04.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long05.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long06.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

<br><br>

<div id="s_left_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long07.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long08.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long09.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

		
		
		
		
	<!-- 마우스 오버시 이미지 확대  script -->
	<script>
  function zoomIn(event) {
	  
	event.target.style.transform = "scale(1.3)";
    event.target.style.transition = "all 0.5s";
    event.target.style.position = "relative";   //static -쌓임 (x), relative(O)
    event.target.style.zIndex = "2";
  }

  function zoomOut(event) {
	  event.target.style.transform = "scale(1)";
    event.target.style.transition = "all 0.5s";
  }	
	
</script>
		
		
		
		
		
		
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
