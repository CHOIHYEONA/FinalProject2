<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>ä�ķ�����</title>
<link rel="stylesheet" href="css/boardupload.css">
</head>
<body>



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
		
		 <div id="uploadbox"  style=" display: inline; width: 400px; height: 1000px; margin: 0px auto;" >
		  <font style="font-weight: bold; font-family: 'Atomy-Bold';">�Խù� ���</font>
		  		<form action = "boardupload" method = "post" enctype="multipart/form-data">
		  			<span>����</span>
		  			<span><input type="text" required="required" name = "title" placeholder = "������ �Է����ּ���"></span>
		  			<table>
		  				<tr>
		  					<td>
                                      <input type="file" name= "filename" id="ex_filename1" class="upload-hidden">
		  					</td>
		  				</tr>
		  				<tr>
							<td>
								<textarea name ="content" rows="10" cols="50"></textarea>
							</td>
		  				</tr>
		  			</table>
		  				j	<span><input id = "submit" type="submit" value="����"></span>
		  					<span><input id = "cancel" type="button" value="���" onclik = "location.href = 'main.jsp'" ></span>
							</form>
                       </div>
                       </div>
                       </div>


</body>
</html>