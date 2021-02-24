

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
<title>멍냥이</title>
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
      String content = "오늘의 일정은 "+ cal_list.get(i).getCa_text() ;
               
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
      
         <div id="null">
              <!-- 다 바꾸기 귀찮아서 빈공백 -->
         </div>



         <!-- 메인 사진 영역 -->
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

    <div class="slider-btns" id="next"><span>▶</span></div>
    <div class="slider-btns" id="previous"><span>◀</span></div>

    <div id="slider-pagination-wrap">
        <ul>
        </ul>
    </div>
</div>


         <!-- 강아지뉴스 타이틀 -->
         <div>
            <div>
                <h3>강아지 </h3>
               <a href="doghealth.jsp">더보기</a>
            </div>
         </div>


         <!-- 강아지 컨텐츠 -->
         <div id="mainContents1">
            <div onclick="location.href='doghealth-page.jsp'">
               <img src="imgs/dog/dog4.jpg">
               <h5>강아지 구토 유도, 과산화수소로 하면 안 되는 이유는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog3.jpg">
               <h5>강아지한테 절대 주면 안되는 음식은?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog7.jpg">
               <h5>강아지 예방접종에 대한 모든것!</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/dog/dog6.jpg">
               <h5>강아지 알레르기 증상을 알아보자!</h5>
            </div>
         
           </div>
       
       
           <!-- 고양이뉴스 타이틀 -->
         <div>
            <div>
                <h3>고양이 </h3>
               <a href="cathealth.jsp">더보기</a>
            </div>
         </div>
         
         <!-- 고양이 컨텐츠 -->
         <div id="mainContents2">
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat6.png">
               <h5>고양이 스크래쳐 고르기, 반드시 필요한 이유?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat7.png">
               <h5>고양이 키울때 일어나는 안전사고 8가지는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat8.png">
               <h5>고양이 수명을 단축시키는 집사 행동 5가지는?</h5>
            </div>
            <div onclick="location.href='http://localhost:8081/2021/main.jsp'">
               <img src="imgs/cat/cat9.png">
               <h5>고양이 심장사상충 증상, 치료 및 예방법은?</h5>
            </div>
         
           </div>
           
             <!-- 인기 커뮤니티 타이틀 -->
         <div>
            <div>
                <h3>커뮤니티 </h3>
               <a href="board.jsp">더보기</a>
            </div>
         </div>
         
         <!-- 인기 커뮤니티 컨텐츠 -->
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

   
      <!---------- 페이지 하단 영역 ---------->
      <div id="footer">
         
         <h3>스마트인재개발원 IoT 웹 개발자 최종 프로젝트</h3>
         <h5>최현아, 강지애, 김수지, 송희철, 강성민</h5>
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