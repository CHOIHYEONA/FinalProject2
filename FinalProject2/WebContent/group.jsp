<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>������ ����</title>
<link rel="stylesheet" href="css/main.css">
<style type="text/css">


div#s_left {

width:380px;

height: 600px;

background-color: yellow;

margin-left: 10px;


float:left;


}

#contents {

width:380px;

height: 600px;

background-color: green;

float:left;

margin-left: 20px;

margin-right: 20px;
}

#s_right {

width:380px;

height: 600px;

background-color: red;

margin-right: 10px;

float:left;


}

.img_shadow:hover{
	box-shadow: 10px 10px 10px gray;
	blur: 15px;
	
}
</style>

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
						<a href="shop2.jsp">�� ��õ</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>

      <!---------- ������ �߰� ���� ---------->
    <div id="mainFrame">
      
       <div id="null">
              <!-- �� �ٲٱ� �����Ƽ� ����� -->
       </div>
         
         
  		<br><br><br><br><br><br>
	

		
		<br><br><br><br>
		
		

	<!-- ������ ǰ���� 3�з� -->
<div id="s_left" class="img_shadow"><a href="dgroup_s.jsp"> 
<img src="imgs/group/dog_s.png"></a></div>

<div id="contents"  class="img_shadow"><a href="dgroup_m.jsp">
<img src="imgs/group/dog_m.png"></a></div>

<div id="s_right" class="img_shadow"><a href="dgroup_l.jsp">
<img src="imgs/group/dog_l.png"></a></div>

		
		
		
		
		
		
	
	
		
	
		  
	
		
		




			
	</div>
			<div id="footermain">
		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>
	</div>
         <a class="top-btn" href="#mainFrame">TOP</a>
         
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