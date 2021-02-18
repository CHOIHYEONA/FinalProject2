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
<title>채식레시피</title>
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
				<h3>로고</h3>
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
			<br><br><br><br><br>
			<%
				int newLine = 0;
			%>
			<div id="boardwrite" >
				<input type = "button" id="boardwrite" value = "게시물작성" >
			</div>
			
				<br><br><br><br><br>
			<br><br><br><br><br>
			<div id = "img">
			 <table>
				<%for(int i =0;i<board_list.size();i++){
					
					if(newLine==0){
						out.print("<tr>");
					}
					newLine++;
					%>
			 		<td><img src="./foldername/<%=board_list.get(i).getImgName()%>" width = "190" height = "190">
			 		<br>
			 		조회수<%=board_list.get(i).getB_count() %>   좋아요<%=board_list.get(i).getB_like() %>
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
			<div class="UnderBar"></div>
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>이상현, 김은아, 송지원, 김읜한, 채평성</h5>
		</div>
	</div>

</body>
</html>