<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�۳��� - �α���</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>



	<div class="frame">

		<!---------- ������ ��� ���� ---------->
		<div class="topFrame">


			<!-- �ֻ�� ���� -->
			<div id="top">
				<a href = "main.jsp"><img src ="imgs/logo.png"></a>
				
			</div>



			<!-- ���� ������ -->
			<div class="UnderBar"></div>


			<!-- ī�װ� ���� ��� -->
			<div id="topMenu"></div>


			<!---------- ������ �߰� ���� ---------->
			<div id="mainFrame">

				<!-- �α��� ���� -->
				<div id="mainContents" style="text-align: center;">
					<span>�α���<br></span>
					<span>
						<br>
						<br> <br> <br> <br>
					</span>
					<form action="LoginServiceCon" method = "post">
						<input type="text" name = "id" required="required" placeholder="���̵�"><br>
						<input type="password" name = "pw" required="required" placeholder="��й�ȣ"><br>
						<br> <input type="submit" value="�α���">
					</form>
					<ul>
						<li><a href="http://localhost:8081/2021/main.jsp">���̵� ã��</a></li>
						<li><a href="http://localhost:8081/2021/main.jsp">��й�ȣ ã��</a></li>
						<li><a href="http://localhost:8081/2021/join.jsp">ȸ������</a></li>
					</ul>

				</div>
			</div>


		</div>
	</div>
</body>
</html>