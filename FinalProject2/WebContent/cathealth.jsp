<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�����-�ǰ�</title>
<link rel="stylesheet" href="css/cathealth.css">
</head>
<body>

<%
customersVO info = (customersVO)session.getAttribute("info");
%>
   <div class="frame">

      <!---------- ������ ��� ���� ---------->
      <div class="topFrame">


         <!-- �ֻ�� ���� -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            
            <!-- �α��μ����� -->
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
							<li><a href="dogtraining.jsp">�Ʒ�</a> </li>
							<li><a href="group.jsp">ǰ��</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">�����</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">�ǰ�</a> </li>
							<li><a href="cataction.jsp">�ൿ</a> </li>
							<li><a href="cattraining.jsp">�Ʒ�</a> </li>
							<li><a href="catgroup.jsp">ǰ��</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">���</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">��������</a> </li>
							<li><a href="">�������</a> </li>
							<li><a href="map_walk.jsp">��å��</a> </li>
						</ul>					
					</li>
					<li>
						<a href="board.jsp">Ŀ�´�Ƽ</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<%if(info!= null){ %>
						<a href="calendar.html">Ķ����</a>
						<%}else{ %>
						<a href="login.jsp" onclick = " alert('�α����� ���ּ���');return false;">Ķ����</a>
						<%} %>
						<ul class="dep2">
						
						</ul>					
					
					</li>					
					<li>
						<a href="shop2.jsp">�� ��ǰ��</a>
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
		����� �ǰ�
		</span>
		<br>
		<hr>
		
		<br>
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px;">
		<a href="https://mypetlife.co.kr/98755/"><img src= "imgs/cat/cat6.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/98755/">����� ��ũ���� ����, �ݵ�� �ʿ��� ����?</a></h2>
				<p class="post-excerpt">����� ��ũ����, ����̸� Ű��� �������� �ݵ�� �־�� �ϴ� �ʼ�ǰ �� �ϳ��ε���. ���� ������ ����, Ŀư ���� �������� �ܰų� ��� ���縦 ������ �ϱ⵵ �մϴ�. �׷��ٸ� ����̴� �� �������� �ܴ� ��ũ��Ī�� �ϴ� ���ϱ��?��</p>
				
			</div>	
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/95819/"><img src= "imgs/cat/cat7.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/95819/">����� Ű�ﶧ �Ͼ�� ������� 8������?</a></h2>
				<p class="post-excerpt">����̸� Ű��� �������� �Ѽ����� ����� ū ���� �̾��� �� �־� �׻� �����ؾ� �ϴµ���. �ܿ�ö�� ����ⱸ�� ����ϱ� ������ ���� �����ؾ� �մϴ�. ����� Ű�� �� ���� �Ͼ �� �ִ� ���� ��� �˾ƺ��� �����ϵ��� �սô١�</p>
				
			</div>
			
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/95437/"><img src= "imgs/cat/cat8.png" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/95437/">����� ������ �����Ű�� ���� �ൿ 5������?</a></h2>
				<p class="post-excerpt">����̸� Ű��� ��ȣ�ڵ��� ��� �츮 ������� ����� �޲ٸ� ���� �Բ��ϱ� �ٶ���. ����̰� �ǰ��ϰ� ����ϴ� ���� ��ȣ���� ������ ���� �߿��� ���̴�. �׷��� ����� ������ �����Ű�� ������ �ൿ�� �ִٴ� ���!...</p>
				
			</div>
						<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/92310/"><img src= "imgs/cat/cat9.png" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/92310/">����� �������� ����, ġ�� �� �������?</a></h2>
				<p class="post-excerpt">����� ���������� �������� ���� ���� ���ɼ��� ���ٰ� �˷��� �ִ�. ����, ������ �Ǵ��� ������ ����� ü������ �����ϱ� ����� ������� �ڶ�� ��쵵 2~10���� �����̴�. ����, ����� ��ȣ�ڵ��� ������ ��ȣ�ڿ� ���� �� �����ϰ� �ȴ�...</p>
				
			</div>
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/87596/"><img src= "imgs/cat/cat10.png" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/87596/">����� �� ��� , �츮 ����̴� ���� ü���ϱ��?</a></h2>
				<p class="post-excerpt">�������� ������ ������� ���, ������ �͸����ε� �Ϸ��� �Ƿΰ� ���Ǹ�ŭ ���������. ������ �ƹ��� ���� �ǵ� �Ϳ��� �ϴ��� ������� �ǰ��� ���ؼ��� ���� �����Ը� �����ϴ� ���� �߿��ϴ�. �׷��ٸ� ����� �� ���� ���ذ� ���� ������, �׸��� �̿� ���� ���� ���� Į�θ��� �˾ƺ���...</p>
				
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