<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>�۳��� ���ݰ������</title>
<link rel="stylesheet" href="css/map_hospital.css">
<style>
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
						<a href="map_hospital.jsp">���</a>
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
						<a href="calendar.html">Ķ����</a>
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
      
      
      	<div id="map" style="width:90%;height:500px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff9056a863fcaf2be7d5a378f84ab5d3"></script>
			<script>
			var mapContainer = document.getElementById('map'), // ������ �߽���ǥ
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.14765613234792, 126.86010832677428), // ������ �߽���ǥ(���� ����Ƽ : 35.139900, 126.934189)
			        level: 6 // ������ Ȯ�� ����
			    }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
			
			<!--
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
			            message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�
			        
			        // ��Ŀ�� ���������츦 ǥ���մϴ�
			        displayMarker(locPosition, message);
			            
			      });
			    
			} else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ���������� ������ �����մϴ�
			    
			    var locPosition = new kakao.maps.LatLng(35.148317, 126.867804),
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
			    //infowindow.open(map, marker);
			    
			    // ���� �߽���ǥ�� ������ġ�� �����մϴ�
			    //map.setCenter(locPosition);    
			}
			-->
			
			//================== �� ��ġ�� ����� �ȶ��� ���ֿ� ������ �� ��ġ ǥ��=====================
			var imageSrc = './imgs/map/mylocation.png', // ��Ŀ�̹����� �ּ��Դϴ�    
			imageSize = new kakao.maps.Size(38, 42), // ��Ŀ�̹����� ũ���Դϴ�
			imageOption = {offset: new kakao.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
			  
			//��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			markerPosition = new kakao.maps.LatLng(35.14765613234792, 126.86010832677428); // ��Ŀ�� ǥ�õ� ��ġ�Դϴ�
			
			//��Ŀ�� �����մϴ�
			var marker = new kakao.maps.Marker({
			position: markerPosition, 
			image: markerImage // ��Ŀ�̹��� ���� 
			});
			
			//��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
			marker.setMap(map);  
			
			// ==========================================================
			
			// ������ ��Ŀ�� ǥ���մϴ� 
			var marker1 = new kakao.maps.Marker({
				map: map, 
			    position: new kakao.maps.LatLng(35.139231, 126.793466)
			});	
			var marker2 = new kakao.maps.Marker({
			 	map: map, 
				position: new kakao.maps.LatLng(35.149996, 126.924343)
			});
			 
			var marker3 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.149044, 126.924014)
			});
			//
			var marker4 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.149223, 126.927804)
			});
			var marker5 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.152360, 126.849512)
			});
			var marker6 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.148462, 126.924067)
			});
			var marker7 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.133396, 126.858908)
			});
			var marker8 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.157194, 126.878614)
			});
			var marker9 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.144419, 126.840320)
			});
			var marker10 = new kakao.maps.Marker({
				map: map, 
				position: new kakao.maps.LatLng(35.138594, 126.915240)
			});
			
			
			  
			  
			// Ŀ���� �������̿� ǥ���� ������ �Դϴ�
			// Ŀ���� �������̴� �Ʒ��� ���� ����ڰ� �����Ӱ� �������� �����ϰ� �̺�Ʈ�� ������ �� �ֱ� ������
			// ������ �̺�Ʈ �޼ҵ带 �������� �ʽ��ϴ� 
			var content1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ���극��' + 
			            '            <div class="close" onclick="closeOverlay1()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/lalabread.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���걸 �����19���� 24</div>' + 
			            '                <div class="jibun ellipsis"> (����) ������ 837-14 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/���극��" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			var content2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            Ƽ��' + 
			            '            <div class="close" onclick="closeOverlay2()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/teaat.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� �����14���� 12</div>' + 
			            '                <div class="jibun ellipsis">(����) ���� 154-47</div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/Ƽ��" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ������Ĵ�' + 
			            '            <div class="close" onclick="closeOverlay3()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/jangjinwoo.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ������110���� 20</div>' + 
			            '                <div class="jibun ellipsis">(����) �嵿 82-1 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/������Ĵ�" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			
			 //
			var content4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ������' + 
			            '            <div class="close" onclick="closeOverlay4()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/bluewhale.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ����õ�� 169-3</div>' + 
			            '                <div class="jibun ellipsis">(����) ���� </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            �������� ��������' + 
			            '            <div class="close" onclick="closeOverlay5()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/maposunjang.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� �������� 137-10 ���ɺ��� 1�� </div>' + 
			            '                <div class="jibun ellipsis">(����) ġ�� 1237-9 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�������� ��������" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content6 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            �Һ�' + 
			            '            <div class="close" onclick="closeOverlay6()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/sobok.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� �嵿�� 19 1��</div>' + 
			            '                <div class="jibun ellipsis">(����) �嵿 84-2 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�Һ�" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content7 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '           �ɲ���' + 
			            '            <div class="close" onclick="closeOverlay7()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/ddonggozip.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ��ȭ��85���� 4-28</div>' + 
			            '                <div class="jibun ellipsis">(����) ��ȣ�� 762-9</div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�ɲ���" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content8 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            �����' + 
			            '            <div class="close" onclick="closeOverlay8()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/pakuya.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ����� 348</div>' + 
			            '                <div class="jibun ellipsis">(����) ȭ���� 69-3 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/�����" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content9 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ī�� 304' + 
			            '            <div class="close" onclick="closeOverlay9()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/cafe304.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� �󹫴����� 15 1��</div>' + 
			            '                <div class="jibun ellipsis"> (����) ������ 171-3 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/ī�� 304" target="_blank" class="link">�󼼺���</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';
			            
			var content10 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            ī�� �д�' + 
			            '            <div class="close" onclick="closeOverlay10()" title="�ݱ�"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="./imgs/map/mildang.PNG" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">���� ���� ���߷�46���� 14 1��</div>' + 
			            '                <div class="jibun ellipsis"> (����) �縲�� 318 </div>' + 
			            '                <div><a href="https://map.kakao.com/link/search/ī�� �д�" target="_blank" class="link">�󼼺���</a></div>' + 
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
         <a class="top-btn" href="#mainFrame">TOP</a>
      


</body>
</html>