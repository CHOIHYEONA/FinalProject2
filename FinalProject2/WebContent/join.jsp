<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>멍냥이 - 회원가입</title>
<link rel="stylesheet" href="css/join.css">
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

				<!-- 회원가입 영역 -->
				<div id="mainContents" style="text-align: center;">
					<p>회원가입</p>
					<form action="">
						<ul>
							<li><p>아이디</p>
							<li><input type="text" placeholder="4~12자 영문, 숫자 조합" required="required"><input type="button" value="중복확인">
							<li><p>비밀번호</p>
							<li><input type="password" placeholder="영문,숫자,특수문자 조합 8자 이상" required="required">
							<li><p>비밀번호 확인</p>
							<li><input type="password" placeholder="비밀번호 확인" required="required">
							<li><p>채식 단계</p>
							<li><select  required="required">
								<option> 플렉시테리언 </option>
								<option>폴로</option>
								<option>페스코</option>
								<option>락토 오보</option>
								<option>오보</option>
								<option>락토</option>
								<option>비건</option>
							</select>
							<input type="button" value="확인하기">
							<li><input type="submit" value="회원가입">
						</ul>
					</form>
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