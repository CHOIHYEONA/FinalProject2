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
<link rel="stylesheet" href="css/boardone1.css">
</head>
<body>
<%
boardDAO dao = new boardDAO();
int boardUid = 20;
 boardVO vo = dao.getOneBoard(boardUid);

%>

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
		
		 <div id="content1">
		  					<span><%=vo.getB_title()%></span>
		  					<span><%=vo.getB_date()%></span>
		  			<table>
		  				<tr>
		  					<td>
		  					<td><img src="./foldername/<%=vo.getImgName()%>" width = "400" height = "400">
		  					</td>
		  				</tr>
		  				<tr>
							<td>
								<span><%=vo.getB_content() %></span>
							</td>
		  				</tr>
		  			</table>
					<hr>
					<span>조회수 <%=vo.getB_count() %></span>
					
					<span>좋아요<%=vo.getB_like() %></span>
                       
                       <br><br><br><br>
                    <span>댓글 </span>   <hr>
                       <form action = "comm">
                       <textarea name ="content" rows="3" cols="30"></textarea>
                       <input id = "submit" type="submit" value="등록">
                       
                       </form>
                       <hr>
                       <div>
                       <span>이름</span><br>
                       <span><%=vo.getB_content()%></span><br>
                       <span><%=vo.getB_date() %></span>
                       </div>
                       
                       </div>
                       </div>
                       </div>


</body>
</html>