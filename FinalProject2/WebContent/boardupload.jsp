<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
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
			
			  
		
		 <div id="rightm"  style=" float: left; display: inline; width: 400px; height: 1000px; margin: 0px auto;" >
		  <font style="font-weight: bold; font-family: 'Atomy-Bold';">제목</font><input type="text" name="title" style="background-color: #ffffff; width: 300px; height: 38px;"/>
                                
                                <font style="font-weight: bold; font-family: 'Atomy-Bold';">ㅇㅅㅇ</font><br>
                                <div style="width: 500px; height: 200px;">
                                   <div style=" float: left; display: inline; width: 200px; height: 200px; padding-right: 10px;">
                                      <div class="filebox1">
                                      <input class="upload-name1" value="이미지를 넣어주세요" disabled="disabled" style="font-size: 15px;
                                         width: 190px; height: 35.4px;"> 
                                      <label for="ex_filename1" style="background-color:#f26964; color: white; font-size: 13px;" >파일 선택</label> 
                                      <input type="file" name= "filename1" id="ex_filename1" class="upload-hidden"> </div>
                                    </div>
                                    <div style=" float: left; display: inline; width: 300px; height: 200px; margin: 0px auto;">
                                      <textarea name ="coment1" rows="1" cols="10"></textarea>
                                 </div>
                              </div>



</body>
</html>