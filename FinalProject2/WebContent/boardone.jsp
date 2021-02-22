<%@page import="model.customersVO"%>
<%@page import="model.commVO"%>
<%@page import="model.commDAO"%>
<%@page import="model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
.c_title{
font-weight:bold;
   font-size: 20px;
}
#b_content{
	padding :0;
}


</style>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>채식레시피</title>
<link rel="stylesheet" href="css/boardone1.css">

</head>
<body>
<%
customersVO info = (customersVO)session.getAttribute("info");

boardDAO dao = new boardDAO();

int boardUid = Integer.parseInt(request.getParameter("boardUid"));
 boardVO vo = dao.getOneBoard(boardUid);
 
 commDAO comm_dao = new commDAO();
 ArrayList<commVO> comm_list = new ArrayList<commVO>();
comm_list =  comm_dao.selectData(boardUid);

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
		  			<table width = "100%" border-collapse = "collapse">
		  				<tr>
		  					<td class  = "c_title" width = "50%" font-size = "16px" font-weight = "bold" ><%=vo.getB_title()%></td>
		  					<td align = "right" ><%=vo.getB_date()%></td>
		  				</tr>
		  				<tr >
							<td colspan = "2"><hr></td>						
						</tr>
		  				<tr>
		  					<td colspan = "2"><img src="./foldername/<%=vo.getImgName()%>" width = "300" height = "300" >
		  				</tr>
		  				<tr >
							<td id = "b_content" colspan = "2">
								<%=vo.getB_content() %>
							</td>
		  				</tr>
		  				<tr height="200px">
							<td>
								
							</td>
		  				</tr>
						<tr >
							<td colspan = "2"><hr></td>						
						</tr>
		  				<tr>
							<td>조회수 <%=vo.getB_count() %></td>
							<td>좋아요<%=vo.getB_like() %></td>
						</tr>
		  			</table>
                       
                       <br><br><br><br>
                    <span>댓글 </span>   <hr>
                       <form action = "commServiceCon">
                       <textarea name ="content" rows="3" cols="30"></textarea>
                       <input id = "submit" type="submit" value="등록">
                       
                       </form>
                       <hr>
                       <div>
                       <span>이름</span><br>
                       <%for(int i=0;i<comm_list.size();i++){ %>
                       <div>
                       <span><%=comm_list.get(i).getC_content()%></span><br>
                       <span><%=comm_list.get(i).getC_date() %></span>
                       </div>
                       <%} %>
                       </div>
                       
                       </div>
                       </div>
                       </div>


</body>
</html>