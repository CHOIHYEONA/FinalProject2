<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>채식레시피</title>
<link rel="stylesheet" href="css/boardupload.css">
</head>
<body>



	<div class="frame">

		<!---------- 페이지 상단 영역 ---------->
		<div class="topFrame">


			<!-- 최상단 영역 -->
			<div id="top">
				<h3>logo</h3>
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
					<li><a href="http://localhost:8081/2021/main.jsp">샵</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">커뮤니티</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">지도</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">고양이</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">강아지</a></li>
				</ul>
			</div>
			
		<br><br><br><br><br>
		
		 <div id="uploadbox"  style=" display: inline; width: 400px; height: 1000px; margin: 0px auto;" >
		  <font style="font-weight: bold; font-family: 'Atomy-Bold';">게시물 등록</font>
		  		<form action = "boardupload" method = "post" enctype="multipart/form-data">
		  			<span>제목</span>
		  			<span><input type="text" required="required" name = "title" placeholder = "내용을 입력해주세요"></span>
		  			<table>
		  				<tr>
		  					<td>
                                      <input type="file" name= "filename" id="ex_filename1" class="upload-hidden">
		  					</td>
		  				</tr>
		  				<tr>
							<td>
								<textarea name ="content" rows="10" cols="50"></textarea>
							</td>
		  				</tr>
		  			</table>
		  				j	<span><input id = "submit" type="submit" value="제출"></span>
		  					<span><input id = "cancel" type="button" value="취소" onclik = "location.href = 'main.jsp'" ></span>
							</form>
                       </div>
                       </div>
                       </div>


</body>
</html>