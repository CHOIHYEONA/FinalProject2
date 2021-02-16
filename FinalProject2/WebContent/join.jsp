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
				<a href = "main.jsp"><img src ="imgs/logo.png"></a>
				
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
					<form action="JoinServiceCon" method = "post">
						<ul>
							<li><p>아이디</p>
<!-- 							<form action = "JoinServiceCon" method = "post"> -->
							<li><input type="text" placeholder="4~12자 영문, 숫자 조합" required="required" name = "id"><input type="button" value="중복확인">
							<li><p>비밀번호</p>
							<li><input type="password" placeholder="영문,숫자,특수문자 조합 8자 이상" required="required" name = "pw">
							<li><p>비밀번호 확인</p>
							<li><input type="password" placeholder="비밀번호 확인" required="required" name = "pwcheck">
							<li><p>이름</p>
							<li><input type="text" placeholder="이름" required="required" name = "name">
							<li><p>전화번호</p>
							<li><input type="text" placeholder="전화번호" required="required" name = "tel">
							<li><input type="submit" value="회원가입">
							<!-- </form> -->
						</ul>
					</form>
				</div>
			</div>


			<!---------- 페이지 하단 영역 ---------->
			
		</div>
	</div>
</body>
</html>