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
<title>�Խ���</title>
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

		<!---------- ������ ��� ���� ---------->
		<div class="topFrame">


         <!-- �ֻ�� ���� -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            <ul>
               <li><a href="login.jsp">�α���</a></li>
               <li><a href="join.jsp">ȸ������</a></li>
         
            </ul>
         </div>


			<!-- ���� ������ -->
			<div class="UnderBar"></div>

			
	


		
          <!-- ī�װ� ���� ��� -->
			<div id="topMenu">
				<ul class="dep1">
					<li>
						<a href="doghealth.jsp">������</a>
						<ul class="dep2">
							<li><a href="doghealth.jsp">�ǰ�</a> </li>
							<li><a href="dogaction.jsp">�ൿ</a> </li>
							<li><a href="">�Ʒ�</a> </li>
							<li><a href="">ǰ��</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">�����</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">�ǰ�</a> </li>
							<li><a href="cataction.jsp">�ൿ</a> </li>
							<li><a href="">ǰ��</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">����</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">��������</a> </li>
							<li><a href="">�������</a> </li>
							<li><a href="">��å��</a> </li>
						</ul>					
					</li>
					<li>
						<a href="http://localhost:8081/2021/main.jsp">Ŀ�´�Ƽ</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<a href="http://localhost:8081/2021/main.jsp">�� ��õ</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>
			
		<!---------- ������ �߰� ���� ---------->
		<div id="mainFrame">

			<br><br><br><br><br>
			<br><br><br><br><br>
			<%
				int newLine = 0;
			%>
			<div id="boardwrite" >
				<input type = "button" id="boardwrite" value = "�Խù��ۼ�" >
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
			 		��ȸ��<%=board_list.get(i).getB_count() %>   ���ƿ�<%=board_list.get(i).getB_like() %>
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

		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			<div class="UnderBar1"></div>
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>

	</div>
	

</body>
</html>