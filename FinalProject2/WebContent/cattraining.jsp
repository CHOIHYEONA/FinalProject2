<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이-훈련</title>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<link rel="stylesheet" href="css/cattraining.css">
</head>
<body>

<%
customersVO info = (customersVO)session.getAttribute("info");
%>
   <div class="frame">

      <!---------- 페이지 상단 영역 ---------->
      <div class="topFrame">


         <!-- 최상단 영역 -->
         <div id="top">
            <a href="main.jsp"><img src="imgs/logo.png"></a>
            
            <!-- 로그인성공시 -->
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



			<!-- 밑줄 디자인 -->
			<div class="UnderBar"></div>
			
			
          <!-- 카테고리 선택 목록 -->
			<div id="topMenu">
				<ul class="dep1">
					<li>
						<a href="doghealth.jsp">강아지</a>
						<ul class="dep2">
							<li><a href="doghealth.jsp">건강</a> </li>
							<li><a href="dogaction.jsp">행동</a> </li>
							<li><a href="dogtraining.jsp">훈련</a> </li>
							<li><a href="group.jsp">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="cathealth.jsp">고양이</a>
						<ul class="dep2">
							<li><a href="cathealth.jsp">건강</a> </li>
							<li><a href="cataction.jsp">행동</a> </li>
							<li><a href="cattraining.jsp">훈련</a> </li>
							<li><a href="catgroup.jsp">품종</a> </li>
						</ul>
					</li>
					<li>
						<a href="map_hospital.jsp">장소</a>
						<ul class="dep2">
							<li><a href="map_hospital.jsp">동물병원</a> </li>
							<li><a href="map_place.jsp">동반가능장소</a> </li>
							<li><a href="map_walk.jsp">산책로</a> </li>
						</ul>					
					</li>
					<li>
						<a href="board.jsp">커뮤니티</a>
						<ul class="dep2">
						
						</ul>					
					
					</li>
					
					<li>
						<%if(info!= null){ %>
						<a href="calendar.html">캘린더</a>
						<%}else{ %>
						<a href="login.jsp" onclick = " alert('로그인을 해주세요');return false;">캘린더</a>
						<%} %>
						<ul class="dep2">
						
						</ul>					
					
					</li>					
					<li>
						<a href="shop2.jsp">펫 용품샵</a>
						<ul class="dep2">
						
						</ul>
					</li>
				</ul>
			</div>
			
			

         
      </div>
	
	
	
	
		      <!---------- 페이지 중간 영역 ---------->
      <div id="mainFrame">	
	
		<br><br><br><br><br><br><br><br><br>
		<span style = " font-size:3em; margin-left: 15px;">
		고양이 훈련영상
		</span>
	<br>
		<hr>
		
		<br>
	
	
  <div id="player">
 <div id="player_screen"><div class="top_img"><img src="imgs/cat/cat6.png" alt="" width ="100%"  height="100%"></div><iframe src="https://www.youtube.com/embed/C9tJVVUx_VY?rel=0" width="400" height="225" frameborder="0" allowfullscreen="true"></iframe></div>
    <dl id="player_text">
     <dt style="padding-left: 320px;"><a href="#">아래 목록에서 원하는 훈련을 선택하세요.</a></dt>
        <dd style="padding-left: 320px;"><a href="#">선택 시 훈련 영상과 훈련 정보가 제공됩니다.</a></dd>
    </dl>
</div><!-- player -->

<div id="list">

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catsit.jpg" alt="" width ="100%"  height="100px"><span class="time">&nbsp;06:27</span></a><em></em></dd>
        <dt><a href="#">&nbsp;&nbsp;📢앉아📢</a></dt>
        <dd class="desc"><a href="#">
        <br>
1️⃣&nbsp; 고양이의 머리 위쪽으로 상으로 줄 간식을 들어 올립니다.<br>
동시에 고양이의 이름을 부르면서 "앉아"라고 말합니다.<br><br>

2️⃣&nbsp; 고양이가 자연스럽게 바닥에 앉을 때까지 간식을 고양이 쪽으로 움직입니다.<br>
만약 아무런 반응도 보이지 않으면 엉덩이를 가볍게 눌러 앉힙니다.<br>
간식을 여전히 머리 위에 든 채 "앉아"라고 말합니다.<br><br>

3️⃣&nbsp; 고양이가 앉으면 칭찬을 하고 간식을 줍니다.<br><br>

4️⃣&nbsp; 고양이가 행동을 완전히 터득할 때까지 위 과정을 날마다 훈련 시간 동안 반복합니다.<br><br><br>

✨&nbsp;제일 중요한 것&nbsp;✨<br>
- 자기가 뭘 해야 간식을 얻을 수 있는지 생각할 시간 주기⏰<br>
- 실패했더라도 절대 화를 내면 안될 것😡❌<br>
- 적극적으로 칭찬해주기😍😘<br><br>

😻&nbsp;훈련의 진정한 의미는 교감, 잊지 말 것 ❗❗<br>


		</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/C9tJVVUx_VY?rel=0"></iframe></dd>
    </dl>

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catwait.jpg" alt="" width="100%" height="100px"><span class="time">&nbsp;02:22</span></a><em></em></dd>
        <dt><a href="#">📢기다려📢</a></dt>
        <dd class="desc"><a href="#">고양이가 기다려를 알아듣습니다</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/w6tB3S5Hxc4?rel=0"></iframe></dd>
    </dl>

    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catdownsit.jpg" alt="" width ="100%"  height="100px"><span class="time">&nbsp;02:16</span></a><em></em></dd>
        <dt><a href="#">📢엎드려📢</a></dt>
        <dd class="desc"><a href="#">고양이가 엎드려를 알아듣습니다</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/q9JscWEpBpI?rel=0"></iframe></dd>
    </dl>
    
     <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/cathand.jpg" alt="" width ="100%"  height="100px"><span class="time">&nbsp;02:21</span></a><em></em></dd>
        <dt><a href="#">&nbsp;&nbsp;&nbsp;📢손📢</a></dt>
        <dd class="desc"><a href="#">고양이가 주인에게 손을 줍니다</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/EbL3qNLEPhk?rel=0"></iframe></dd>
    </dl>
    <dl class="movs">
     <dd class="thumb"><a href="#"><img src="imgs/cat/catcry.jpg" alt="" width ="100%"  height="100px"><span class="time">&nbsp;05:32</span></a><em></em></dd>
        <dt><a href="#">&nbsp;&nbsp;📢짖어📢</a></dt>
        <dd class="desc"><a href="#">고양이가 짖어 하면 짖습니다</a></dd>
        <dd class="url"><iframe src="https://www.youtube.com/embed/LuGkDzv1Kjc?rel=0"></iframe></dd>
    </dl>
</div>
<script src="jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$('#player_screen .top_img').on('click', function(e) { // 플레이어 영역을 덮은 이미지를 클릭하면
	  e.preventDefault(); // 일단 a태그에 걸린 링크는 무시하고
	  var $item_top = $("#player_screen").find("iframe").attr("src"); // 플레이어 영역에 넣은 iframe의 주소를 찾아서 $item_top 로 간직하고 있다가
	  $('#player_screen .top_img').fadeOut("slow"); // 플레이어 영역을 덮은 이미지를 천천히 페이드처리하고
	  $('#player_screen iframe').show().attr("src",$item_top + "&autoplay=1"); // 플레이어 영역의 iframe 주소에 autoplay 코드를 추가해서 변경
	 });
	$('#list .movs a').on('click', function(e) { // 썸네일 영역의 a 링크들을 클릭하면
	  e.preventDefault(); // 일단 a태그에 걸린 링크는 무시하고
	  var $itemx = $(this).parents("dl.movs") // 클릭된 a 의 부모요소 중 dl.movs라는 요소를 찾아 $itemx 로 지정합니다.
	  var $itemx_tit = $itemx.find("dt").html(); // 간직한 $itemx 요소에 dt를 찾아 그 안의 내용을 $itemx_tit으로 지정합니다. 
	  var $itemx_desc = $itemx.find("dd.desc").html(); // 간직한 $itemx 요소에서 dd.desc를 찾아 그 안의 내용을 $itemx_desc로 지정합니다.
	  var $itemx_url = $itemx.find("dd.url iframe").attr("src"); // 간직한 $itemx 요소에서 dd.url 안에 있는 iframe을 찾아, 그 주소를 $itemx_url 로 지정합니다.
	  var $sc_top = $(document).scrollTop(); // 사실 없어도 되지만, 플레이어 영역이 스크롤되어 감춰졌을 때 제대로 보여주기 위해서 지정합니다. 문서가 얼마나 스크롤되었는지 지정합니다.
	  var $player_top = $('#player').offset().top // 문서 내에서 플레이어 영역의 세로 위치가 어디 쯤에 위치하는지를 지정합니다.

	   //console.log($itemx); // 콘솔을 켜두면 각 값이 제대로 표시되는지 쉽게 알 수 있겠죠? IE에서는 콘솔이 안먹으니까 테스트용으로만 씁시다.
	   //console.log($itemx_tit);
	   //console.log($itemx_desc);
	   //console.log($itemx_url); 

	  $('#player_screen .top_img').hide(); // 커버 이미지를 감춥니다. 
	  $('#player_screen iframe').attr("src",$itemx_url + "&autoplay=1"); // 플레이어 영역의 iframe에 아까 지정해두었던 iframe주소와 자동실행 코드를 넣어줍니다. 동영상이 재생됩니다.
	  $('#player_screen iframe').show(); // 만약 iframe이 감춰져 있었다면, 이 코드를 통해 보여지게 됩니다.
	  $('#player_text dt').html( $itemx_tit ); // 플레이어 영역의 제목 부분에 썸네일에 있던 제목을 그대로 가져와 넣어줍니다.
	  $('#player_text dd').html( $itemx_desc ); // 플레이어 영역의 설명 부분에 썸네일에 있던 설명을 그대로 가져와 넣어줍니다.
	  if ( $player_top < $sc_top) { // 만약 플레이어 영역의 높이값보다 페이지를 더 아래로 스크롤했을 경우,
	    $('html, body').animate({ scrollTop: $player_top }, "slow"); // 현재 보고있는 페이지를 플레이어 영역이 다 보일 때까지 스크롤 합니다.
	    }
	  else { return false } // 만약 플레이어 영역의 높이값이 화면에 보인다면, 그냥 관둡니다.
	 });


	</script>
	
	</div>
</div>
	<div id="footermain">

	
		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
</body>

</html>