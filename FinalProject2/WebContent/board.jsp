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
customersVO info = (customersVO)session.getAttribute("info");
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
							<li><a href="map_walk.jsp">산책로</a> </li>
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
		<span style = " font-size:3em; margin-left: 30px;">
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
				<%if(info!= null){ %>
				<input type = "button" id="boardwrite" value = "게시물 작성"  ></a>
			<%}else{ %>
				<input type = "button" id="boardwrite" value = "게시물 작성" onclick = " alert('로그인을 해주세요');return false;" ></a>
			<%} %>
			</div>
			
				<br><br><br>

			  <div id = "img">
			 <table style = "font-size : 20px;">
				<%for(int i =0;i<board_list.size();i++){
					
					if(newLine==0){
						out.print("<tr>");
					}
					newLine++;
					%>
					<td width = "100"></td>
			 		<td align = "center"><a id = "title" href = "boardone.jsp?boardUid=<%=board_list.get(i).getBoardUid()%>"><img src="./foldername/<%=board_list.get(i).getImgName()%>" width = "270" height = "270">
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
	</div>
	<div id="footermain">

	
	
		<div id="footer">
			
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
	

</body>
</html>