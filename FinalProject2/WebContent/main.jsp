<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>채식레시피</title>
<link rel="stylesheet" href="css/main.css">
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


		<!---------- 페이지 중간 영역 ---------->
		<div id="mainFrame">
		
		<!-- 카테고리 선택 목록 -->
			<div id="topMenu">
				<ul>
					<li><a href="http://localhost:8081/2021/main.jsp">강아지</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">고양이</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">지도</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">커뮤니티</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">샵</a></li>
				</ul>
			</div>


			<!-- 메인 사진 영역 -->
			<div>
				<img src="imgs/main/middle/main.png">
				<div>
					<input type="text" name="ser"><a
						href="http://localhost:8081/2021/main.jsp"><img
						src="imgs/main/middle/search.png"></a>
				</div>
			</div>


			<!-- 메인 컨텐츠 선택 버튼 -->
			<div>
				<div>s
					<input type="button" value="최신순"> <input type="button"
						value="추천순">
				</div>
			</div>


			<!-- 메인 컨텐츠 -->
			<div id="mainContents">
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<div onclick="location.href='http://localhost:8081/2021/main.jsp'">
					<img src="imgs/main/middle/food_1.png">
					<h4>대창 구이</h4>
					<h5>재료는 돈만 있으면 됨</h5>
				</div>
				<input type="button"
					style="width: 100px; height: 40px; position: relative; top: 0%; left: 50%"
					value="더보기">
			</div>
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