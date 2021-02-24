<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������-�Ʒ�</title>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<link rel="stylesheet" href="css/cattraining.css">
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
			
			
          <!-- ī�װ��� ���� ��� -->
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
						<a href="cathealth.jsp">������</a>
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
		������ �Ʒÿ���
		</span>
	<br>
		<hr>
		
		<br>
	
	
  <div id="player">
 <div id="player_screen"><div class="top_img"><img src="imgs/cat/cat6.png" alt="" width ="100%"  height="100%"></div><iframe src="https://www.youtube.com/embed/C9tJVVUx_VY?rel=0" width="400" height="225" frameborder="0" allowfullscreen="true"></iframe></div>
    <dl id="player_text">
     <dt><a href="#">������ �Ʒÿ��� �Դϴ�.</a></dt>
        <dd><a href="#">�������� �⺻ �Ʒ� ������ �˷��ݴϴ�</a></dd>
    </dl>
</div><!-- player -->

<div id="list">

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catsit.jpg" alt="" width ="100%"  height="100px"><span class="time">06:27</span></a><em></em></dd>
        <dt><a href="#">�ɾ�</a></dt>
        <dd class="desc"><a href="#">�����̰� �ɾƸ� �˾Ƶ���ϴ�</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/C9tJVVUx_VY?rel=0"></iframe></dd>
    </dl>

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catwait.jpg" alt="" width="100%" height="100px"><span class="time">02:22</span></a><em></em></dd>
        <dt><a href="#">��ٷ�</a></dt>
        <dd class="desc"><a href="#">�����̰� ��ٷ��� �˾Ƶ���ϴ�</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/w6tB3S5Hxc4?rel=0"></iframe></dd>
    </dl>

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catdownsit.jpg" alt="" width ="100%"  height="100px"><span class="time">02:16</span></a><em></em></dd>
        <dt><a href="#">�����</a></dt>
        <dd class="desc"><a href="#">�����̰� ������� �˾Ƶ���ϴ�</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/q9JscWEpBpI?rel=0"></iframe></dd>
    </dl>
    
     <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/cathand.jpg" alt="" width ="100%"  height="100px"><span class="time">02:21</span></a><em></em></dd>
        <dt><a href="#">��</a></dt>
        <dd class="desc"><a href="#">�����̰� ���ο��� ���� �ݴϴ�</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/EbL3qNLEPhk?rel=0"></iframe></dd>
    </dl>
    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catcry.jpg" alt="" width ="100%"  height="100px"><span class="time">05:32</span></a><em></em></dd>
        <dt><a href="#">¢��</a></dt>
        <dd class="desc"><a href="#">�����̰� ¢�� �ϸ� ¢���ϴ�</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/LuGkDzv1Kjc?rel=0"></iframe></dd>
    </dl>
</div>
<script src="jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('#player_screen .top_img').on('click', function(e) { // �÷��̾� ������ ���� �̹����� Ŭ���ϸ�
	  e.preventDefault(); // �ϴ� a�±׿� �ɸ� ��ũ�� �����ϰ�
	  var $item_top = $("#player_screen").find("iframe").attr("src"); // �÷��̾� ������ ���� iframe�� �ּҸ� ã�Ƽ� $item_top �� �����ϰ� �ִٰ�
	  $('#player_screen .top_img').fadeOut("slow"); // �÷��̾� ������ ���� �̹����� õõ�� ���̵�ó���ϰ�
	  $('#player_screen iframe').show().attr("src",$item_top + "&autoplay=1"); // �÷��̾� ������ iframe �ּҿ� autoplay �ڵ带 �߰��ؼ� ����
	 });
	$('#list .movs a').on('click', function(e) { // ����� ������ a ��ũ���� Ŭ���ϸ�
	  e.preventDefault(); // �ϴ� a�±׿� �ɸ� ��ũ�� �����ϰ�
	  var $itemx = $(this).parents("dl.movs") // Ŭ���� a �� �θ��� �� dl.movs��� ��Ҹ� ã�� $itemx �� �����մϴ�.
	  var $itemx_tit = $itemx.find("dt").html(); // ������ $itemx ��ҿ� dt�� ã�� �� ���� ������ $itemx_tit���� �����մϴ�. 
	  var $itemx_desc = $itemx.find("dd.desc").html(); // ������ $itemx ��ҿ��� dd.desc�� ã�� �� ���� ������ $itemx_desc�� �����մϴ�.
	  var $itemx_url = $itemx.find("dd.url iframe").attr("src"); // ������ $itemx ��ҿ��� dd.url �ȿ� �ִ� iframe�� ã��, �� �ּҸ� $itemx_url �� �����մϴ�.
	  var $sc_top = $(document).scrollTop(); // ��� ��� ������, �÷��̾� ������ ��ũ�ѵǾ� �������� �� ����� �����ֱ� ���ؼ� �����մϴ�. ������ �󸶳� ��ũ�ѵǾ����� �����մϴ�.
	  var $player_top = $('#player').offset().top // ���� ������ �÷��̾� ������ ���� ��ġ�� ��� �뿡 ��ġ�ϴ����� �����մϴ�.

	   //console.log($itemx); // �ܼ��� �ѵθ� �� ���� ����� ǥ�õǴ��� ���� �� �� �ְ���? IE������ �ܼ��� �ȸ����ϱ� �׽�Ʈ�����θ� ���ô�.
	   //console.log($itemx_tit);
	   //console.log($itemx_desc);
	   //console.log($itemx_url); 

	  $('#player_screen .top_img').hide(); // Ŀ�� �̹����� ����ϴ�. 
	  $('#player_screen iframe').attr("src",$itemx_url + "&autoplay=1"); // �÷��̾� ������ iframe�� �Ʊ� �����صξ��� iframe�ּҿ� �ڵ����� �ڵ带 �־��ݴϴ�. �������� ����˴ϴ�.
	  $('#player_screen iframe').show(); // ���� iframe�� ������ �־��ٸ�, �� �ڵ带 ���� �������� �˴ϴ�.
	  $('#player_text dt').html( $itemx_tit ); // �÷��̾� ������ ���� �κп� ����Ͽ� �ִ� ������ �״�� ������ �־��ݴϴ�.
	  $('#player_text dd').html( $itemx_desc ); // �÷��̾� ������ ���� �κп� ����Ͽ� �ִ� ������ �״�� ������ �־��ݴϴ�.
	  if ( $player_top < $sc_top) { // ���� �÷��̾� ������ ���̰����� �������� �� �Ʒ��� ��ũ������ ���,
	    $('html, body').animate({ scrollTop: $player_top }, "slow"); // ���� �����ִ� �������� �÷��̾� ������ �� ���� ������ ��ũ�� �մϴ�.
	    }
	  else { return false } // ���� �÷��̾� ������ ���̰��� ȭ�鿡 ���δٸ�, �׳� ���Ӵϴ�.
	 });


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