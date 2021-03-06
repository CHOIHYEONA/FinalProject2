<%@page import="model.customersVO"%>
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
							<li><a href="map_walk">산책로</a> </li>
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
		게시물 작성
		</span>
		<br>
		<hr>
		
		<br>		

			
		<br><br><br>
		
		 <div id="uploadbox"  style=" display: inline; width: 400px; height: 1000px; margin: 0px auto;" >
		  		<form action = "boardupload" method = "post" enctype="multipart/form-data">
					<p id = "title">제목</p> <br>			
		  			<span><input type="text" required="required" name = "title" placeholder = "내용을 입력해주세요"></span>
		  			<br><br>
		  			<table>
		  				<tr>
		  					<td>
                                      <input type="file" name= "filename" id="ex_filename1" class="upload-hidden">
		  					</td>
		  				</tr>
		  				<tr>
		  					<td>
		  					<br>
		  					</td>
		  				</tr>
		  				<tr>
		  				
							<td>
								<textarea id ="content" name ="content" rows="15" cols="50" style=" width: 392px; height: 411px; "></textarea>
							</td>
		  				</tr>
		  			</table>
		  					<br><br><br><hr style="    position: relative;  width: 395px; right: 200px; top: -49px; ">
		  					<input id = "submit" type="submit" value="제출" style="WIDTH: 130pt; HEIGHT: 30pt; float: left; font-size:15px; position: relative; top: -35px; "></span>
		  					
		  					<a href = "board.jsp">
		  					<input id = "cancel" type="button" value="취소" style="WIDTH: 130pt; HEIGHT: 30pt; float:left; left: 0px; font-size:15px; position: relative; top: -35px; margin-left: 50px;"></span>
		  					</a>
		  					
		  					</form>
                       </div>
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