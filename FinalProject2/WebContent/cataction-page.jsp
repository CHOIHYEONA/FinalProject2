
<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�۳���-�ǰ�</title>
<style>




</style>

<link rel="stylesheet" href="css/cataction-page.css">
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
							<li><a href="map_place.jsp">���ݰ������</a> </li>
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
		<span style = "font-size:3em;">
		����̰� �ɽ��� �� ���̴� �ൿ 4����
		</span>
		<br>
		<hr>
		
		<div id ="main-content">
			<p>&nbsp;����̴� �Ϸ翡 3���� 2�� ���� �ڸ鼭 �����µ���. ���� �̷��� ���� �ڰ� �޽��� ���ϴ� �ð��� ����̿��� �ſ� ������ �ð��̿���. ������ ���� �ݺ��Ǵ� �ϻ��� ����̸� �ɽ��ϰ� �� �� �־��. ����̰� �ɽ��� �� ���̴� �ൿ�� �˾� �ΰ� ������ ��ó�� ���ֵ��� �սô�!</p>
			<h2>����̰� �ɽ��� �� ���̴� �ൿ?</h2>
			<p>&nbsp;�������� �޸� ����̴� ��å�̳� ������ �� ���� �ʱ� ������ ��κ��� �ð��� ������ ������ ����. �׷��� ���� ������ �� �����ִ� ����̸� ���� ���� �Ⱦ����� ������ ��⵵ �մϴ�.</p>
			<h3>1. ���縦 �����Ѵ�</h3>
			<img src = "./imgs/cat/cat100.jpg">
			<p>�����ؼ� TV�� ���� �ְų� å�� �а�, ��ǻ�ͳ� �ڵ����� �ϰ� ���� �� ����̰� �� ���� ���ų� �ȱ� ���� �ֳ���? �̷��� ���縦 �����ϴ� �ൿ�� ����̰� �ɽ��ϴٴ� �ǹ��� �� �־��.</p>
			<p>Ư�� ����ȭ���� �񼮾��� ���差 �̻� ����Ѵٸ� ��⿡ ȭ���̳� �˾�, ���ϸ� ����� �� ���ɼ��� ������, �������� óġ�� �޴� �� �����մϴ�. </p>
			<p>������ ����̰� ���翡�� ������ ���ڿ�~��, ������ �� �����޶��~�� �ϴ� �ൿ�� ������. �̷� ������ �ƹ��� ����ִ� �� �ϰ� �ִ��� ����̿��� �������ֵ��� �ؿ�! �츮 ���� �Ϳ��� ��ŭ ��մ� �� ��� �ֳ���?!</p>
			<h3>2. �׷���� �ʹ� ���� ��</h3>
			<img src = "./imgs/cat/cat101.jpg">
			<p>����̴� ������ ȯ���� �����ϴ� ��ŭ �������� �����嵵 ������ �ؿ�. �׷������� ����̰� �׷���� �ϴ� ����� �Ϸ� �� ������ �ʰ� �ϴ� �ൿ�ε���. </p>
			<p>������ �̷� �׷�ֵ� �ʹ� ���� �Ѵٸ� ����̰� ���� ����, ��Ʈ������ �ް� �ִٴ� ���̶�� ���! �˰� ��̳���? Ư�� ���������� �� �κи��� ��� �Ӱų�, ���� ���� ������ �׷���� �Ѵٸ� �����ؾ� �ؿ�!</p>
			<h3>3. �θ����� ��� �Ҹ�</h3>
			<img src = "./imgs/cat/cat102.jpg">
			<p>����̰� ���縦 �ٶ󺸸� ���ֿ�! �ֿ�~�� �ϰ� �θ����� ��ٸ� ���� �ɽ��ϴٴ� �ǹ��� �� �־��. �䱸������ ���� ���� ���� �� �����Ҹ� ���ٴ� �ټ� ���� �Ҹ��� ��� �ؿ�. </p>
			<p>����� ���� ����ġ�� ���� �����Ҹ��� ���߰� ���� �Ĵٺ��ٸ� ��� �ʹٴ� ��ȣ�� ���ɼ��� ���ƿ�. �ε巴�� �̸��� �θ��ų� ����̸� ���ٵ�� �ֵ��� �սô�. </p>
			<h3>4. �ֺ��� �ɵ���</h3>
			<img src = "./imgs/cat/cat103.jpg">
			<p>�Ǹ��� ��ɲ��̾��� ���� �ͼ� �츮 ����̴� �߼��� ���� ���п� �ֺ��� �����ϴ� ������ �־��. �����ΰ� ������ ���� ������, �Ǵ� õ���� �������� ���Ǵ� �ൿ�� ������. </p>	
			<p>������ ����̰� ���� �� �ֺ��� ����Ÿ��ٸ� �ɽ��ϴٴ� ���� �� �־��. ������ ��մ� ���� �ʿ��ϴٿˡ� �ϸ� �ֺ��� �����ϴ� ������. �ͼ�����(?) ��︮�� ��ɰ�(�峭��)�� �ʿ��� �������� �𸨴ϴ�!</p>
			<h2>����̰� �ɽ��� �� ��� �������?</h2>
			<p>������̵��� �ǳ����� ��Ȱ�ϱ� ������ ����� �� �ʿ䰡 �������µ���. �׷��� ���� �������� �߻��ϱⰡ ���� �ʽ��ϴ�. </p>
			<p>����̰� �ɽ����� ������ �ð��� ������� ���±Ⱑ ���ų�, �ǿ��� ��������, ��Ʈ������ ����� ������. ĹŸ���� Ĺ���� ���� ���̱ⱸ�� ��ġ�ϴ� �͵� ������ �Ϸ翡 10�� �̻��� �ݵ�� ���簡 ���� �峭������ ����ݽô�.</p>
		
		
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
	  <a class="top-btn" href="#mainFrame">TOP</a>
			
			
			
			
</body>
</html>