<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>멍냥이 - 로그인</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>



	<div class="frame">

		<!---------- 페이지 상단 영역 ---------->
		<div class="topFrame">


			<!-- 최상단 영역 -->
			<div id="top">
				<a href = "main.jsp"><img src ="imgs/logo.png"></a>
				
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
						<br>
						<br> <br> <br> <br>
					</span>
					<form action="LoginServiceCon" method = "post">
						<input type="text" name = "id" required="required" placeholder="아이디"><br>
						<input type="password" name = "pw" required="required" placeholder="비밀번호"><br>
						<br> <input type="submit" value="로그인">
					</form>
					<ul>
						<li><a href="http://localhost:8081/2021/main.jsp">아이디 찾기</a></li>
						<li><a href="http://localhost:8081/2021/main.jsp">비밀번호 찾기</a></li>
						<li><a href="http://localhost:8081/2021/join.jsp">회원가입</a></li>
					</ul>

				</div>
			</div>


		</div>
	</div>
</body>
</html>