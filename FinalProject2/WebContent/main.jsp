
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�۳���</title>
<link rel="stylesheet" href="css/main.css">
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
						<a href="board.jsp">Ķ����</a>
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



         <!-- ���� ���� ���� -->
<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><img src="imgs/main/middle/maindog.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/maincat.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/mainmap.png" width="1200px" height="600px"></li>
        <li><img src="imgs/main/middle/mainborad.png" width="1200px" height="600px"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>


         <!-- ���������� Ÿ��Ʋ -->
         <div>
            <div>
                <h3>������ </h3>
               <a href="doghealth.jsp">������</a>
            </div>
         </div>


         <!-- ������ ������ -->
         <div id="mainContents1">
            <div onclick="location.href='doghealth-page.jsp'">
               <img src="imgs/dog/dog4.jpg">
               <h5>������ ���� ����, ����ȭ���ҷ� �ϸ� �� �Ǵ� ������?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog3.jpg">
               <h5>���������� ���� �ָ� �ȵǴ� ������?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog7.jpg">
               <h5>������ ���������� ���� ����!</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog6.jpg">
               <h5>������ �˷����� ������ �˾ƺ���!</h5>
            </div>
         
           </div>
       
       
           <!-- ����̴��� Ÿ��Ʋ -->
         <div>
            <div>
                <h3>����� </h3>
               <a href="cathealth.jsp">������</a>
            </div>
         </div>
         
         <!-- ����� ������ -->
         <div id="mainContents2">
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat6.png">
               <h5>����� ��ũ���� ����, �ݵ�� �ʿ��� ����?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat7.png">
               <h5>����� Ű�ﶧ �Ͼ�� ������� 8������?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat8.png">
               <h5>����� ������ �����Ű�� ���� �ൿ 5������?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat9.png">
               <h5>����� �������� ����, ġ�� �� �������?</h5>
            </div>
         
           </div>
           
             <!-- �α� Ŀ�´�Ƽ Ÿ��Ʋ -->
         <div>
            <div>
                <h3>Ŀ�´�Ƽ </h3>
               <a href="board.jsp">������</a>
            </div>
         </div>
         
         <!-- �α� Ŀ�´�Ƽ ������ -->
         <div id="mainContents3">
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>����</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>����</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>����</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/main/middle/logo.png">
               <h5>����</h5>
            </div>
         
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