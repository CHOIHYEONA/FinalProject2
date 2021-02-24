<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>멍냥이 산책로</title>
<link rel="stylesheet" href="css/map_hospital.css">
<style>
	#map {margin : auto;}
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
  
    
</style>

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
		산책로 위치
		</span>
	<br>
		<hr>
		
		<br>      
      
      	<div id="map" style="width:90%;height:500px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff9056a863fcaf2be7d5a378f84ab5d3"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도의 중심좌표
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.14765613234792, 126.86010832677428), // 지도의 중심좌표(35.14765613234792, 126.86010832677428)
			        level: 6 // 지도의 확대 레벨
			    }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			
			//========================== 내 위치 표시 ==========================
			var imageSrc = './imgs/map/mylocation.png', // 마커이미지의 주소입니다    
			imageSize = new kakao.maps.Size(32, 35), // 마커이미지의 크기입니다
			imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			
			//마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
			//    markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
			
				
			//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
			if (navigator.geolocation) {
			    
			    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
			    navigator.geolocation.getCurrentPosition(function(position) {
			        
			        var lat = position.coords.latitude, // 위도
			            lon = position.coords.longitude; // 경도
			        
			        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			            message = '<div class = "myinfo" style="padding:5px;">현재 위치</div>'; // 인포윈도우에 표시될 내용입니다
			        
			        // 마커와 인포윈도우를 표시합니다
			        displayMarker(locPosition, message);
			            
			      });
			    
			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
			    
			    var locPosition = new kakao.maps.LatLng(35.14765613234792, 126.86010832677428),
			        message = 'geolocation을 사용할수 없어요..'
			        
			    displayMarker(locPosition, message);
			}
			
			// 지도에 마커와 인포윈도우를 표시하는 함수입니다
			function displayMarker(locPosition, message) {
			
			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({  
			        map: map, 
			        position: locPosition,
			        image : markerImage
			    }); 
			    
			    var iwContent = message, // 인포윈도우에 표시할 내용
			        iwRemoveable = true;
			
			    // 인포윈도우를 생성합니다
			    var infowindow = new kakao.maps.InfoWindow({
			        content : iwContent,
			        removable : iwRemoveable
			    });
			    
			    // 인포윈도우를 마커위에 표시합니다 
			    infowindow.open(map, marker);
			    
			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);
			}
			

			// ==========================================================
			
			// 지도에 마커를 표시합니다 
			var marker1 = new kakao.maps.Marker({
				map: map, 
			    position: new kakao.maps.LatLng(35.148091, 126.854813)
			});	
			var marker2 = new kakao.maps.Marker({
			 	map: map, 
				position: new kakao.maps.LatLng(35.157258, 126.858145)
			});
			 
			var marker3 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.182337, 126.885370)
			});
			//
			var marker4 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.223890, 126.891649)
			});
			var marker5 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.006743, 126.825680)
			});
			var marker6 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.127934, 126.870096)
			});
			var marker7 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.140540, 126.898824)
			});
			var marker8 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.190732, 126.862812)
			});
			var marker9 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.142024, 126.911641)
			});
			var marker10 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.067588, 126.761091)
			});
			
			
			  
			  
			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            운천 저수지' + 
			            '            <div class="close" onclick="closeOverlay1()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/unchun.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주광역시 서구 쌍촌동 869-9</div>' + 
			            '                <div class="jibun ellipsis">(Tel) 062-360-7990 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/운천저수지" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			var content2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            5.18 기념공원' + 
			            '            <div class="close" onclick="closeOverlay2()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/518.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 서구 내방로 152</div>' + 
			            '                <div class="jibun ellipsis">(우) 61965 (지번) 쌍촌동 1268</div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/5.18 기념공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            중외공원' + 
			            '            <div class="close" onclick="closeOverlay3()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/joongwhy.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 북구 하서로 50</div>' + 
			            '                <div class="jibun ellipsis">(지번) 운암동 164 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/중외공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			
			 //
			var content4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            우치공원' + 
			            '            <div class="close" onclick="closeOverlay4()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/uchipark.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 북구 우치로 677</div>' + 
			            '                <div class="jibun ellipsis">(지번) 생용동 산 127-2 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/우치공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            전남산림자원연구소 메타세콰이어길' + 
			            '            <div class="close" onclick="closeOverlay5()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/meta.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">전남 나주시 다도면 풍산리 산 1-1 </div>' + 
			            '                <div class="jibun ellipsis">(지번) 산포면 산제리 산 23-7 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/전남산림자원연구소 메타세콰이어길" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content6 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            풍암 호수공원' + 
			            '            <div class="close" onclick="closeOverlay6()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/poongam.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 서구 풍암동 460</div>' + 
			            '                <div class="jibun ellipsis">(지번) 운암동 164 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/풍암 호수공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content7 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '           월산 근린공원' + 
			            '            <div class="close" onclick="closeOverlay7()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/wolsan.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 남구 월산로 52</div>' + 
			            '                <div class="jibun ellipsis">(지번) 월산동 153-8 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/월산 근린공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content8 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            동림동 산동교' + 
			            '            <div class="close" onclick="closeOverlay8()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/sandong.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 북구 동림동</div>' + 
			            '                <div class="jibun ellipsis"> </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/동림동 산동교" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content9 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            광주 사직공원' + 
			            '            <div class="close" onclick="closeOverlay9()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/sazicpark.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 남구 양림동 108-10</div>' + 
			            '                <div class="jibun ellipsis">  </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/광주 사직공원" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content10 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            승천보' + 
			            '            <div class="close" onclick="closeOverlay10()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/seungchun.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">광주 남구 승촌보길 90</div>' + 
			            '                <div class="jibun ellipsis">지번) 승촌동 495-4 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/승천보" target="_blank" class="link">상세보기</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			            
			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay1 = new kakao.maps.CustomOverlay({
			    content: content1,
			    position: marker1.getPosition()      
			});
			    
			var overlay2 = new kakao.maps.CustomOverlay({
			    content: content2,
			    position: marker2.getPosition()      
			});
			
			var overlay3 = new kakao.maps.CustomOverlay({
			    content: content3,
			    position: marker3.getPosition()      
			});
			
			var overlay4 = new kakao.maps.CustomOverlay({
			    content: content4,
			    position: marker4.getPosition()      
			});
			
			var overlay5 = new kakao.maps.CustomOverlay({
			    content: content5,
			    position: marker5.getPosition()      
			});
			
			var overlay6 = new kakao.maps.CustomOverlay({
			    content: content6,
			    position: marker6.getPosition()      
			});
			
			var overlay7 = new kakao.maps.CustomOverlay({
			    content: content7,
			    position: marker7.getPosition()      
			});
			
			var overlay8 = new kakao.maps.CustomOverlay({
			    content: content8,
			    position: marker8.getPosition()      
			});
			
			var overlay9 = new kakao.maps.CustomOverlay({
			    content: content9,
			    position: marker9.getPosition()      
			});
			
			var overlay10 = new kakao.maps.CustomOverlay({
			    content: content10,
			    position: marker10.getPosition()      
			});
			
			
			
			// 마커를 클릭했을 때 클릭한 마커만 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker1, 'click', function() {
			    overlay1.setMap(map);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker2, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(map);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});    
			kakao.maps.event.addListener(marker3, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(map);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});    
			kakao.maps.event.addListener(marker4, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(map);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker5, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(map);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker6, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(map);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker7, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(map);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker8, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(map);
			    overlay9.setMap(null);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker9, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(map);
			    overlay10.setMap(null);
			});
			kakao.maps.event.addListener(marker10, 'click', function() {
			    overlay1.setMap(null);
			    overlay2.setMap(null);
			    overlay3.setMap(null);
			    overlay4.setMap(null);
			    overlay5.setMap(null);
			    overlay6.setMap(null);
			    overlay7.setMap(null);
			    overlay8.setMap(null);
			    overlay9.setMap(null);
			    overlay10.setMap(map);
			});
			    
			
			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay1() {
			    overlay1.setMap(null);
			}
			function closeOverlay2() {
			    overlay2.setMap(null);
			}
			function closeOverlay3() {
			    overlay3.setMap(null);
			}
			function closeOverlay4() {
			    overlay4.setMap(null);
			}
			function closeOverlay5() {
			    overlay5.setMap(null);
			}
			function closeOverlay6() {
			    overlay6.setMap(null);
			}
			function closeOverlay7() {
			    overlay7.setMap(null);
			}
			function closeOverlay8() {
			    overlay8.setMap(null);
			}
			function closeOverlay9() {
			    overlay9.setMap(null);
			}
			function closeOverlay10() {
			    overlay10.setMap(null);
			}
			
			    
			</script>
      
      </div> <!-- mainFrame 끝 -->
      
      </div> <!-- frame 끝 -->
      
      <div id="footermain">
      
      		<!---------- 페이지 하단 영역 ---------->
		<div id="footer">
			
			<h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
			<h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
		</div>
	</div>
       
      


</body>
</html>