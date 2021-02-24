<%@page import="model.customersVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�۳��� ��å��</title>
<link rel="stylesheet" href="css/map_hospital.css">
<style>
	#map {margin : auto;}
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '����', sans-serif;line-height: 1.5;}
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
		��å�� ��ġ
		</span>
	<br>
		<hr>
		
		<br>      
      
      	<div id="map" style="width:90%;height:500px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff9056a863fcaf2be7d5a378f84ab5d3"></script>
			<script>
			var mapContainer = document.getElementById('map'), // ������ �߽���ǥ
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.14765613234792, 126.86010832677428), // ������ �߽���ǥ(35.14765613234792, 126.86010832677428)
			        level: 6 // ������ Ȯ�� ����
			    }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
			
			
			//========================== �� ��ġ ǥ�� ==========================
			var imageSrc = './imgs/map/mylocation.png', // ��Ŀ�̹����� �ּ��Դϴ�    
			imageSize = new kakao.maps.Size(32, 35), // ��Ŀ�̹����� ũ���Դϴ�
			imageOption = {offset: new kakao.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
			
			//��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
			//    markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�
			
				
			//HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ� 
			if (navigator.geolocation) {
			    
			    // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
			    navigator.geolocation.getCurrentPosition(function(position) {
			        
			        var lat = position.coords.latitude, // ����
			            lon = position.coords.longitude; // �浵
			        
			        var locPosition = new kakao.maps.LatLng(lat, lon), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
			            message = '<div class = "myinfo" style="padding:5px;">���� ��ġ</div>'; // ���������쿡 ǥ�õ� �����Դϴ�
			        
			        // ��Ŀ�� ���������츦 ǥ���մϴ�
			        displayMarker(locPosition, message);
			            
			      });
			    
			} else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ���������� ������ �����մϴ�
			    
			    var locPosition = new kakao.maps.LatLng(35.14765613234792, 126.86010832677428),
			        message = 'geolocation�� ����Ҽ� �����..'
			        
			    displayMarker(locPosition, message);
			}
			
			// ������ ��Ŀ�� ���������츦 ǥ���ϴ� �Լ��Դϴ�
			function displayMarker(locPosition, message) {
			
			    // ��Ŀ�� �����մϴ�
			    var marker = new kakao.maps.Marker({  
			        map: map, 
			        position: locPosition,
			        image : markerImage
			    }); 
			    
			    var iwContent = message, // ���������쿡 ǥ���� ����
			        iwRemoveable = true;
			
			    // ���������츦 �����մϴ�
			    var infowindow = new kakao.maps.InfoWindow({
			        content : iwContent,
			        removable : iwRemoveable
			    });
			    
			    // ���������츦 ��Ŀ���� ǥ���մϴ� 
			    infowindow.open(map, marker);
			    
			    // ���� �߽���ǥ�� ������ġ�� �����մϴ�
			    map.setCenter(locPosition);
			}
			

			// ==========================================================
			
			// ������ ��Ŀ�� ǥ���մϴ� 
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
			
			
			  
			  
			// Ŀ���� �������̿� ǥ���� ������ �Դϴ�
			// Ŀ���� �������̴� �Ʒ��� ���� ����ڰ� �����Ӱ� �������� �����ϰ� �̺�Ʈ�� ������ �� �ֱ� ������
			// ������ �̺�Ʈ �޼ҵ带 �������� �ʽ��ϴ� 
			var content1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ��õ ������' + 
			            '            <div class="close" onclick="closeOverlay1()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/unchun.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���ֱ����� ���� ���̵� 869-9</div>' + 
			            '                <div class="jibun ellipsis">(Tel) 062-360-7990 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/��õ������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			var content2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            5.18 ������' + 
			            '            <div class="close" onclick="closeOverlay2()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/518.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ����� 152</div>' + 
			            '                <div class="jibun ellipsis">(��) 61965 (����) ���̵� 1268</div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/5.18 ������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            �߿ܰ���' + 
			            '            <div class="close" onclick="closeOverlay3()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/joongwhy.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� �ϱ� �ϼ��� 50</div>' + 
			            '                <div class="jibun ellipsis">(����) ��ϵ� 164 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�߿ܰ���" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			
			 //
			var content4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ��ġ����' + 
			            '            <div class="close" onclick="closeOverlay4()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/uchipark.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� �ϱ� ��ġ�� 677</div>' + 
			            '                <div class="jibun ellipsis">(����) ���뵿 �� 127-2 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/��ġ����" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            �����긲�ڿ������� ��Ÿ�����̾��' + 
			            '            <div class="close" onclick="closeOverlay5()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/meta.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���ֽ� �ٵ��� ǳ�긮 �� 1-1 </div>' + 
			            '                <div class="jibun ellipsis">(����) ������ ������ �� 23-7 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�����긲�ڿ������� ��Ÿ�����̾��" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content6 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ǳ�� ȣ������' + 
			            '            <div class="close" onclick="closeOverlay6()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/poongam.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ǳ�ϵ� 460</div>' + 
			            '                <div class="jibun ellipsis">(����) ��ϵ� 164 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/ǳ�� ȣ������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content7 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '           ���� �ٸ�����' + 
			            '            <div class="close" onclick="closeOverlay7()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/wolsan.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ����� 52</div>' + 
			            '                <div class="jibun ellipsis">(����) ���굿 153-8 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/���� �ٸ�����" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content8 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ������ �굿��' + 
			            '            <div class="close" onclick="closeOverlay8()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/sandong.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� �ϱ� ������</div>' + 
			            '                <div class="jibun ellipsis"> </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/������ �굿��" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content9 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ���� ��������' + 
			            '            <div class="close" onclick="closeOverlay9()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/sazicpark.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� �縲�� 108-10</div>' + 
			            '                <div class="jibun ellipsis">  </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/���� ��������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content10 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ��õ��' + 
			            '            <div class="close" onclick="closeOverlay10()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/seungchun.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ���̺��� 90</div>' + 
			            '                <div class="jibun ellipsis">����) ���̵� 495-4 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/��õ��" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			            
			// ��Ŀ ���� Ŀ���ҿ������̸� ǥ���մϴ�
			// ��Ŀ�� �߽����� Ŀ���� �������̸� ǥ���ϱ����� CSS�� �̿��� ��ġ�� �����߽��ϴ�
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
			
			
			
			// ��Ŀ�� Ŭ������ �� Ŭ���� ��Ŀ�� Ŀ���� �������̸� ǥ���մϴ�
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
			    
			
			// Ŀ���� �������̸� �ݱ� ���� ȣ��Ǵ� �Լ��Դϴ� 
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
      
      </div> <!-- mainFrame �� -->
      
      </div> <!-- frame �� -->
      
      <div id="footermain">
      
      		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>
	</div>
       
      


</body>
</html>