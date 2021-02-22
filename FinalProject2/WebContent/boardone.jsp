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
<title>ä�ķ�����</title>
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
							<td>��ȸ�� <%=vo.getB_count() %></td>
							<td>���ƿ�<%=vo.getB_like() %></td>
						</tr>
		  			</table>
                       
                       <br><br><br><br>
                    <span>��� </span>   <hr>
                       <form action = "commServiceCon">
                       <textarea name ="content" rows="3" cols="30"></textarea>
                       <input id = "submit" type="submit" value="���">
                       
                       </form>
                       <hr>
                       <div>
                       <span>�̸�</span><br>
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