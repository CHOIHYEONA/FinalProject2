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
<title>ä�ķ�����</title>
<link rel="stylesheet" href="css/boardone1.css">
</head>
<body>
<%
boardDAO dao = new boardDAO();
int boardUid = 20;
 boardVO vo = dao.getOneBoard(boardUid);

%>

	<div class="frame">

		<!---------- ������ ��� ���� ---------->
		<div class="topFrame">


			<!-- �ֻ�� ���� -->
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


			<!-- ���� ������ -->
			<div class="UnderBar"></div>

			
		</div>


		<!---------- ������ �߰� ���� ---------->
		<div id="mainFrame">
		
		<!-- ī�װ� ���� ��� -->
			<div id="topMenu">
				<ul>
					<li><a href="http://localhost:8081/2021/main.jsp">��</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">Ŀ�´�Ƽ</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">����</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">�����</a></li>
					<li><a href="http://localhost:8081/2021/main.jsp">������</a></li>
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
					<span>��ȸ�� <%=vo.getB_count() %></span>
					
					<span>���ƿ�<%=vo.getB_like() %></span>
                       
                       <br><br><br><br>
                    <span>��� </span>   <hr>
                       <form action = "comm">
                       <textarea name ="content" rows="3" cols="30"></textarea>
                       <input id = "submit" type="submit" value="���">
                       
                       </form>
                       <hr>
                       <div>
                       <span>�̸�</span><br>
                       <span><%=vo.getB_content()%></span><br>
                       <span><%=vo.getB_date() %></span>
                       </div>
                       
                       </div>
                       </div>
                       </div>


</body>
</html>