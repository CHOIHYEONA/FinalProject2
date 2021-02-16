<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/vd-recipe.css">
</head>
<body>
 <div class="frame">

      <!---------- 페이지 상단 영역 ---------->
      <div class="topFrame">


         <!-- 최상단 영역 -->
         <div id="top">
            <h3>Vegetarianism</h3>
            <ul>
               <li><a href="http://localhost:8081/2021/main.jsp"><img
                     src="imgs/main/top/search.png"></a></li>
               <li><a href="http://localhost:8081/2021/main.jsp"><img
                     src="imgs/main/top/search.png"></a></li>
               <li><a href="http://localhost:8081/2021/login.jsp"><img
                     src="imgs/main/top/person.png"></a></li>
               <li><a href="http://localhost:8081/2021/main.jsp"><img
                     src="imgs/main/top/menu.png"></a></li>
            </ul>
         </div>


         <!-- 밑줄 디자인 -->
         <div class="UnderBar"></div>

         
         
      </div>
      
      
      <!---------- 페이지 이미지 영역 ---------->
	<div class="vd">
		<img id="vd_img" alt="레시피사진" src="imgs/main/middle/food_1.png">
		
	</div>
	
	<div id="like_img">
		<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
		<img src="imgs/vd_RecipeWritten/middle/det.png">
		</div>
		<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
		<img src="imgs/vd_RecipeWritten/middle/like.png">
		</div>
		<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
		<img src="imgs/vd_RecipeWritten/middle/keep.png">
		</div>
		
	</div>
	
	<div id="recipename">
		<h1>두부 부추 만두</h1>
	</div>
	
	<div id="material">
		<h2>재료</h2>
	</div>
	
	<!-- 밑줄 디자인 -->
    <div class="UnderBar"></div>
      
</div>
	
	
	



 <!---------- 페이지 하단 영역 ---------->
      <div id="footer">
         <div class="UnderBar"></div>
         <h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
         <h5>이상현, 김은아, 송지원, 김읜한, 채평성</h5>
      </div>
   </div>


</body>
</html>