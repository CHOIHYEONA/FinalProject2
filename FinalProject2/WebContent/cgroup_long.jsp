<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>����� ���� - �����</title>
<link rel="stylesheet" href="css/cgroup_long.css">
<style type="text/css">

div#s_left_1{

width:380px;

height: 450px;

background-color: red;

float:left;

margin-left: 10px;

margin-bottom: 20px;
}


#contents_1 {

width:380px;

height: 450px;

background-color: orange;

float:left;

margin-left: 20px;

margin-right: 20px;

margin-bottom: 20px;
}

#s_right_1 {

width:380px;

height: 450px;

background-color: yellow;

float:left;

margin-right: 10px;

margin-bottom: 20px;
}




div#s_left_2{

width:380px;

height: 450px;

background-color: green;

float:left;

margin-left: 10px;

margin-bottom: 20px;
}


#contents_2 {

width:380px;

height: 450px;

background-color: blue;

float:left;

margin-left: 20px;

margin-right: 20px;

margin-bottom: 20px;
}

#s_right_2 {

width:380px;

height: 450px;

background-color: purple;

float:left;

margin-right: 10px;

margin-bottom: 20px;
}





div#s_left_3{

width:380px;

height: 450px;

background-color: #7CFC00;

float:left;

margin-left: 10px;
}


#contents_3 {

width:380px;

height: 450px;

background-color: #4682B4;

float:left;

margin-left: 20px;

margin-right: 20px;
}

#s_right_3 {

width:380px;

height: 450px;

background-color: #FFC0CB;

float:left;

margin-right: 10px;
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
		�����
		</span>
		<br>
		<hr>
		
		<br>
		
		

	<!-- ������ ǰ����  -->
<div id="s_left_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long01.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long02.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_1" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long03.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

<br><br>

<div id="s_left_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long04.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long05.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_2" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long06.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

<br><br>

<div id="s_left_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long07.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="contents_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long08.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>
<div id="s_right_3" class="img_shadow"><img src="imgs/cgroup_long/cgroup_long09.png" onmouseenter="zoomIn(event)"
      onmouseleave="zoomOut(event)"></a></div>

		
		
		
		
	<!-- ���콺 ������ �̹��� Ȯ��  script -->
	<script>
  function zoomIn(event) {
	  
	event.target.style.transform = "scale(1.3)";
    event.target.style.transition = "all 0.5s";
    event.target.style.position = "relative";   //static -���� (x), relative(O)
    event.target.style.zIndex = "2";
  }

  function zoomOut(event) {
	  event.target.style.transform = "scale(1)";
    event.target.style.transition = "all 0.5s";
  }	
	
</script>
		
		
		
		
		
		
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
