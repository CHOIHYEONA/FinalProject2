<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>������ ���� - ������</title>
<link rel="stylesheet" href="css/main.css">
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
		
		

	<!-- ������ ǰ����  -->
<div id="s_left_1" class="img_shadow"><img src="">1</a></div>
<div id="contents_1" class="img_shadow"><img src="">2</a></div>
<div id="s_right_1" class="img_shadow"><img src="">3</a></div>

<br><br>

<div id="s_left_2" class="img_shadow"><img src="">4</a></div>
<div id="contents_2" class="img_shadow"><img src="">5</a></div>
<div id="s_right_2" class="img_shadow"><img src="">6</a></div>

<br><br>

<div id="s_left_3" class="img_shadow"><img src="">7</a></div>
<div id="contents_3" class="img_shadow"><img src="">8</a></div>
<div id="s_right_3" class="img_shadow"><img src="">9</a></div>

		
		
		
		
		
		
	
	
		
	
		  
	
		
		




			
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