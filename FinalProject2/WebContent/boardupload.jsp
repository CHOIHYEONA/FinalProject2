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
							<li><a href="dogtraining.html">�Ʒ�</a> </li>
							<li><a href="">ǰ��</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">�����</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">�ǰ�</a> </li>
							<li><a href="cataction.jsp">�ൿ</a> </li>
							<li><a href="cattraining.html">�Ʒ�</a> </li>
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
						<a href="board.jsp">Ŀ�´�Ƽ</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					<li>
						<a href="calendar.html">Ķ����</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>					
					<li>
						<a href="shop2.jsp">�� ��õ</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>
		<!---------- ������ �߰� ���� ---------->
		<div id="mainFrame">
		<br><br><br><br><br><br><br><br><br>
		<span style = " font-size:3em; margin-left: 15px;">
		�Խù� �ۼ�
		</span>
		<br>
		<hr>
		
		<br>		

			
		<br><br><br>
		
		 <div id="uploadbox"  style=" display: inline; width: 400px; height: 1000px; margin: 0px auto;" >
		  		<form action = "boardupload" method = "post" enctype="multipart/form-data">
					���� : 					
		  			<span><input type="text" required="required" name = "title" placeholder = "������ �Է����ּ���"></span>
		  			<br><br>
		  			<table>
		  				<tr>
		  					<td>
                                      <input type="file" name= "filename" id="ex_filename1" class="upload-hidden">
		  					</td>
		  				</tr>
		  				<tr>
							<td>
								<textarea name ="content" rows="15" cols="50"></textarea>
							</td>
		  				</tr>
		  			</table>
		  					<br><br><br><hr>
		  					<input id = "submit" type="submit" value="����" style="WIDTH: 80pt; HEIGHT: 20pt; float: left; font-size:15px;"></span>
		  					
		  					<a href = "board.jsp">
		  					<input id = "cancel" type="button" value="���" style="WIDTH: 80pt; HEIGHT: 20pt; float:right; left: 0px; font-size:15px;"></span>
		  					</a>
		  					
		  					</form>
                       </div>
                       </div>
                       </div>
                       
                       
	<div id="footermain">

	
		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>
	</div>

</body>
</html>