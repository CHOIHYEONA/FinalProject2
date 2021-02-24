

<%@page import="java.util.Calendar"%>
<%@page import="model.calendarVO"%>
<%@page import="model.calendarDAO"%>
<%@page import="model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.boardDAO"%>
<%@page import="model.customersVO"%>
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

<%
customersVO info = (customersVO)session.getAttribute("info");
boardDAO dao = new boardDAO();
ArrayList<boardVO> board_list = new ArrayList<boardVO>();

calendarDAO c_dao = new calendarDAO();
ArrayList<calendarVO> cal_list = new ArrayList<calendarVO>();

Calendar cal = Calendar.getInstance();
String year =  String.valueOf(cal.get(Calendar.YEAR));
String month =  String.valueOf(cal.get(Calendar.MONTH)+1);
String day= String.valueOf(cal.get(Calendar.DATE));
String date = year+"-"+month+"-"+day;
System.out.print(date);

if(info!= null) {
   int userUid = info.getUserUid();
cal_list = c_dao.getList(date,userUid);
if(cal_list.size()>0){
String c_date = cal_list.get(0).getCa_date();
   if(date.equals(c_date)){
      for(int i=0 ; i<cal_list.size();i++){
      String content = "������ ������ "+ cal_list.get(i).getCa_text() ;
               
      %>
      <script type = "text/javascript">
         var content = "<%=content%>";
         alert(content);

      </script>
<%
      }
   }
   }
}

board_list = dao.getList(); 

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
      
         <div id="null">
              <!-- �� �ٲٱ� �����Ƽ� ����� -->
         </div>



         <!-- ���� ���� ���� -->
<div id="slider-wrap">
    <ul id="slider">
        <li>

          <div onclick="location.href='doghealth.jsp'"><img src="imgs/main/middle/1.png" width="1200px" height="600px"></div>
        </li>

        <li>
         <div onclick="location.href='cathealth.jsp'"><img src="imgs/main/middle/2.png" width="1200px" height="600px"></div>
        </li>

        <li>
           <div onclick="location.href='map_hospital.jsp'"><img src="imgs/main/middle/3.png" width="1200px" height="600px"></div>
        </li>

        <li>
           <div onclick="location.href='board.jsp'"><img src="imgs/main/middle/4.png" width="1200px" height="600px"></div>
        </li>

    </ul>

    <div class="slider-btns" id="next"><span>��</span></div>
    <div class="slider-btns" id="previous"><span>��</span></div>

    <div id="slider-pagination-wrap">
        <ul>
        </ul>
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
         
            <div>
               <a href = "boardone.jsp?boardUid=<%=board_list.get(1).getBoardUid()%>">
               <img src="./foldername/<%=board_list.get(1).getImgName()%>">
               <h5><%=board_list.get(1).getB_title() %></h5>
               </a>
            </div>
            <div>
            <a href = "boardone.jsp?boardUid=<%=board_list.get(2).getBoardUid()%>">
               <img src="./foldername/<%=board_list.get(2).getImgName()%>">
               <h5><%=board_list.get(2).getB_title() %></h5>
            </a>
            </div>
            <div>
            <a href = "boardone.jsp?boardUid=<%=board_list.get(3).getBoardUid()%>">
               <img src="./foldername/<%=board_list.get(3).getImgName()%>">
               <h5><%=board_list.get(3).getB_title() %></h5>
            </a>
            </div>
            <div>
            <a href = "boardone.jsp?boardUid=<%=board_list.get(4).getBoardUid()%>">
               <img src="./foldername/<%=board_list.get(4).getImgName()%>">
               <h5><%=board_list.get(4).getB_title() %></h5>
               </a>
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
         
   <script type="text/javascript"></script>
   <script>
         //slide-wrap
var slideWrapper = document.getElementById('slider-wrap');
//current slideIndexition
var slideIndex = 0;
//items
var slides = document.querySelectorAll('#slider-wrap ul li');
//number of slides
var totalSlides = slides.length;
//get the slide width
var sliderWidth = slideWrapper.clientWidth;
//set width of items
slides.forEach(function (element) {
    element.style.width = sliderWidth + 'px';
})
//set width to be 'x' times the number of slides
var slider = document.querySelector('#slider-wrap ul#slider');
slider.style.width = sliderWidth * totalSlides + 'px';

// next, prev
var nextBtn = document.getElementById('next');
var prevBtn = document.getElementById('previous');
nextBtn.addEventListener('click', function () {
    plusSlides(1);
});
prevBtn.addEventListener('click', function () {
    plusSlides(-1);
});

// hover
slideWrapper.addEventListener('mouseover', function () {
    this.classList.add('active');
    clearInterval(autoSlider);
});
slideWrapper.addEventListener('mouseleave', function () {
    this.classList.remove('active');
    autoSlider = setInterval(function () {
        plusSlides(1);
    }, 3000);
});


function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlides(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    slideIndex = n;
    if (slideIndex == -1) {
        slideIndex = totalSlides - 1;
    } else if (slideIndex === totalSlides) {
        slideIndex = 0;
    }

    slider.style.left = -(sliderWidth * slideIndex) + 'px';
    pagination();
}

//pagination
slides.forEach(function () {
    var li = document.createElement('li');
    document.querySelector('#slider-pagination-wrap ul').appendChild(li);
})

function pagination() {
    var dots = document.querySelectorAll('#slider-pagination-wrap ul li');
    dots.forEach(function (element) {
        element.classList.remove('active');
    });
    dots[slideIndex].classList.add('active');
}

pagination();
 var autoSlider = setInterval(function () {
     plusSlides(1);
 }, 3000);
   </script>      
</body>
</html>