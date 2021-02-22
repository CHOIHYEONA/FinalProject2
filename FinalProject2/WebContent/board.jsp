<%@page import="model.customersVO"%>
<%@page import="model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>게시판</title>
<link rel="stylesheet" href="css/board.css">
</head>
<body>

<%

boardDAO dao = new boardDAO();
ArrayList<boardVO> board_list = new ArrayList<boardVO>();

board_list = dao.getList();
System.out.print(board_list.size());

%>

	<div class="frame">

		<!---------- 페이지 상단 영역 ---------->
		<div class="topFrame">


         <!-- 최상단 영역 -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            <ul>
               <li><a href="login.jsp">로그인</a></li>
               <li><a href="join.jsp">회원가입</a></li>
         
            </ul>
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
							<li><a href="">훈련</a> </li>
							<li><a href="">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">고양이</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">건강</a> </li>
							<li><a href="cataction.jsp">행동</a> </li>
							<li><a href="">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">지도</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">동물병원</a> </li>
							<li><a href="">공공장소</a> </li>
							<li><a href="">산책로</a> </li>
						</ul>					
					</li>
					<li>
						<a href="http://localhost:8081/2021/main.jsp">커뮤니티</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<a href="http://localhost:8081/2021/main.jsp">샵 추천</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>
			
		<!---------- 페이지 중간 영역 ---------->
		<div id="mainFrame">

			<br><br><br><br><br>
			<br><br><br><br><br>
		<span style = " font-size:3em; margin-left: 15px;">
		커뮤니티
		</span>
		<br>
		<hr>
			<%
				int newLine = 0;
			%>
			<br>
			<div>
				<a href = "boardupload.jsp">
				<input type = "button" id="boardwrite" value = "게시물 작성" style="WIDTH: 160pt; HEIGHT: 40pt; float: right; font-size:20px; left: 0px;" >				</a>
	
			</div>
			
				<br><br><br><br><br>
			<br><br><br><br><br>
			<div id = "img">
			 <table style = "font-size : 20px;">
				<%for(int i =0;i<board_list.size();i++){
					
					if(newLine==0){
						out.print("<tr>");
					}
					newLine++;
					%>
					<td width = "100"></td>
			 		<td align = "center"><a href = "boardone.jsp?boardUid=<%=board_list.get(i).getBoardUid()%>"><img src="./foldername/<%=board_list.get(i).getImgName()%>" width = "270" height = "270">
			 		<br>
			 		<%=board_list.get(i).getB_title() %></a>
			 		<br><br><br><br><br><br>
			 		</td>
			 	
			 	<%
			 	if(newLine == 3){
			 		out.print("</tr>");
			 		newLine = 0;
			 	}
			 
				} %>
			 </table>
			</div>
			
			</div>

		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			<div class="UnderBar1"></div>
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>

	</div>
	

</body>
</html>