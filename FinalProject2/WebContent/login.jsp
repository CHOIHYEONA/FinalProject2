<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>채식레시피 - 로그인</title>
<link rel="stylesheet" href="css/login.css">
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
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/person.png"></a></li>
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/menu.png"></a></li>
				</ul>
			</div>


			<!-- 밑줄 디자인 -->
			<div class="UnderBar"></div>


			<!-- 카테고리 선택 목록 -->
			<div id="topMenu"></div>


			<!---------- 페이지 중간 영역 ---------->
			<div id="mainFrame">

				<!-- 로그인 영역 -->
				<div id="mainContents" style="text-align: center;">
					<span>로그인<br></span>
					<span>
						<br>Vegetarianism에 오신 것을 환영합니다.<br>보다 나은 서비스 제공을 위해 로그인
						해주세요<br> <br> <br> <br>
					</span>
					<form action="">
						<input type="text" required="required" placeholder="아이디"><br>
						<input type="password" required="required" placeholder="비밀번호"><br>
						<br> <input type="submit" value="로그인">
					</form>
					<ul>
						<li><a href="http://localhost:8081/2021/main.jsp">아이디 찾기</a></li>
						<li><a href="http://localhost:8081/2021/main.jsp">비밀번호 찾기</a></li>
						<li><a href="http://localhost:8081/2021/join.jsp">회원가입</a></li>
					</ul>

				</div>
			</div>


			<!---------- 페이지 하단 영역 ---------->
			<div id="footer">
			<div class="UnderBar"></div>
				<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
				<h5>이상현, 김은아, 송지원, 김읜한, 채평성</h5>
			</div>
		</div>
	</div>
</body>
</html>