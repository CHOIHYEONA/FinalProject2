<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>������ ����</title>
<link rel="stylesheet" href="css/catgroup.css">
<style type="text/css">


div#s_left {

width:380px;

height: 600px;

background-color: yellow;

margin-left: 150px;


float:left;


}


#s_right {

width:380px;

height: 600px;

background-color: red;

margin-right: 150px;

float:right;


}

.img_shadow:hover{
	box-shadow: 10px 10px 10px gray;
	blur: 15px;
	
}
</style>

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
		����� ǰ��
		</span>
		<br>
		<hr>
		
		<br>
		
		

	<!-- ������ ǰ���� 3�з� -->
<div id="s_left" class="img_shadow"><a href="dgroup_s.jsp"> 
<img src="imgs/group/catgroup1.png"></a></div>

<div id="s_right" class="img_shadow"><a href="dgroup_l.jsp">
<img src="imgs/group/catgroup2.png"></a></div>

		
		
		
		
		
		
	
	
		
	
		  
	
		
		


	</div>

			
	</div>
			<div id="footermain">
		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>
	</div>
       
         
   <script>
/*    		var img_shadow = document.getElementById('img_shadow');
   		img_shadow.addEventListener('mouseover', function(){
   			img_shadow.shadowColor = "black";
   			img_shadow.shadowBlur = 5;
   		}) */
   	/* 	
   		$('img_shadow').hover(function(){
   			$(this).css('box-shadow','5px 5px 5px 5px black')
   		}) */
   </script>
</body>
</html>