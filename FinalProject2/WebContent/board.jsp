<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ä�ķ�����</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>



	<div class="frame">

		<!---------- ������ ��� ���� ---------->
		<div class="topFrame">


			<!-- �ֻ�� ���� -->
			<div id="top">
				<h3>�ΰ�</h3>
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
			<div id = "new">
				<input type = "button" value = "�Խù��ۼ�" onclick = "boardWrite.jsp">
			</div>
			<table width = "600ox" align = "center" >
				<% int newline = 0;
					int cnt = 0;
				%>
			
			
			
			
			
			</table>



		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			<div class="UnderBar"></div>
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>�̻���, ������, ������, ������, ä��</h5>
		</div>
	</div>

</body>
</html>