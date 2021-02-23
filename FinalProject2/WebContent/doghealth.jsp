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
<link rel="stylesheet" href="css/doghealth.css">
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
		<span style = " font-size:3em; margin-left: 15px;">
		������ �ǰ�
		</span>
		<br>
		<hr>
		
		<br>
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px;">
		<a href="https://mypetlife.co.kr/97927/"><img src= "imgs/dog/dog4.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/97927/">������ ���� ����, ����ȭ���ҷ� �ϸ� �� �Ǵ� ������?</a></h2>
				<p class="post-excerpt">������ ���ݸ� ���� ������ ���������� �ߵ� ������ ����ų �� �־� �ſ� �����մϴ�. �׷��� �̷� ������ �������� ���� ���, ���� óġ�� ��</p>
				
			</div>	
		<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/9221/"><img src= "imgs/dog/dog3.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/9221/">���������� ���� �ָ� �ȵǴ� ������?</a></h2>
				<p class="post-excerpt">���� ���� �Ѿƴٴϸ� ���� ���� �޶�� ������ �ݷ����� ����� ���鼭 �츮�� ��ο� ������. ���� ���� �൵ �ɱ�?�� ������ ������ ������ �ִµ�, ������ �ܿ� ���� ���� �븩�̴�. �Ź� �򰥸��ٸ�, �������� �Ծ�� �� �Ǵ� ������ ������ڡ�</p>
				
			</div>
			
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/190/"><img src= "imgs/dog/dog7.jpg" width ="100%"  height="300"></a>
		

			</div>
			<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/190/">������ ���������� ���� ����!</a></h2>
				<p class="post-excerpt">����� �¾�� �ֱ������� ���������� �µ���, ���������Ե� ������ �������� �������� �ִ�. ���������� �ʼ��� ����� �ϴ� ���������� �����ֱ⿡ ���� �˾ƺ���. ����, �ѱ��� �̱��� ���� �����Ⱓ�� ���ϰ�, �� ����� �˾ƺ����� ����...</p>
				
			</div>
						<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/premium/%ea%b0%95%ec%95%84%ec%a7%80-%ec%95%8c%eb%a0%88%eb%a5%b4%ea%b8%b0-%ec%a6%9d%ec%83%81%ea%b3%bc-%ec%9b%90%ec%9d%b8%ec%97%90-%eb%94%b0%eb%a5%b8-%ea%b4%80%eb%a6%ac%eb%b2%95%ec%9d%80/"><img src= "imgs/dog/dog6.jpg" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/premium/%ea%b0%95%ec%95%84%ec%a7%80-%ec%95%8c%eb%a0%88%eb%a5%b4%ea%b8%b0-%ec%a6%9d%ec%83%81%ea%b3%bc-%ec%9b%90%ec%9d%b8%ec%97%90-%eb%94%b0%eb%a5%b8-%ea%b4%80%eb%a6%ac%eb%b2%95%ec%9d%80/">������ �˷����� ������ �˾ƺ���!</a></h2>
				<p class="post-excerpt">������ �˷�����. ��� �˷������ ���������� ������ �˷����⵵ �ܹ��� �������� ������ �ƴϿ���. Ư��, ������ �������̶� �ϳ��ϳ� �׽�Ʈ�ϸ鼭 ������ ���������� ���� �� �ð��� �ɷ���. ������ ������ �ľǵǸ� �װ͸� �� ���ؼ� ��Ȱ�ϸ� �Ǳ� ������ ������ ���� ������� �ʾƿ�...</p>
				
			</div>
			<div style="width: 35%; height: 300px; border: 0; float: left; margin-left: 15px; margin-top: 30px;">
		<a href="https://mypetlife.co.kr/34771/"><img src= "imgs/dog/dog5.jpg" width ="100%"  height="300"></a>
		

			</div>
						<div
				style="width: 50%; height: 300px; border: 0; float: right; margin-right: 100px; margin-top: 30px;">
								<br><br><br><br>
				<h2 class="post-title"><a href="https://mypetlife.co.kr/34771/">������ ����ֱ� �� ���ǻ���!</a></h2>
				<p class="post-excerpt">�������� �Ǻο� �� ������ ���ؼ� ����� �ʼ���. Ư��, ���� ���� ���̶�� ����� ��Ű�鼭 ��ҿ��� �� ���Ҵ� �Ǻ��� ��ó�� ����, ������ ���� �̻��ȣ�� �߰��� �� �ִ�. �׷��ٸ�, ������ ��� �ֱ� �����ؼ��� ���? �Ǻΰ� ���ϱ� ������ ���ó�� ���� ������ �ʾƵ� �ȴٰ� �ϴµ�, ��� ������ ������ ���ϱ�?...</p>
				
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