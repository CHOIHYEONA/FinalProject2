<%@page import="model.customersVO"%>
<%@page import="model.commVO"%>
<%@page import="model.commDAO"%>
<%@page import="model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.c_title{
font-weight:bold;
   font-size: 20px;
}
#b_content{
	padding :0;
	    background: whitesmoke;
}


</style>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="UTF-8">
<title>멍냥이 게시판</title>
<link rel="stylesheet" href="css/boardone1.css">

</head>
<body>
<%
customersVO info = (customersVO)session.getAttribute("info");

boardDAO dao = new boardDAO();

int boardUid = Integer.parseInt(request.getParameter("boardUid"));
dao.updatecount(boardUid);
String name = info.getUserName();

int userUid = info.getUserUid();

int board_num = Integer.parseInt(request.getParameter("boardUid"));
boardVO vo = dao.getOneBoard(boardUid);
int userUid2 = vo.getUserUid(); 
commDAO comm_dao = new commDAO();
ArrayList<commVO> comm_list = new ArrayList<commVO>();
comm_list =  comm_dao.selectData(boardUid);


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
							<li><a href="map_walk">산책로</a> </li>
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
		게시물 
		</span>
		<br>
		<hr>
		
		<br>		

			
		<br><br><br>
		
		 <div id="content1">
		  			<table width = "100%" border-collapse = "collapse">
		  				<tr>
		  					<td class  = "c_title" width = "50%" font-size = "16px" font-weight = "bold" ><%=vo.getB_title()%>
		  					 <td></td>
		  					</td>
		  					<td align = "right" ><%=vo.getB_date()%></td>
		  				</tr>
		  				<tr >
							<td colspan = "3"><hr><br><br></td>		
											
						</tr> 
						    
		  				<tr>
		  				<%if(userUid == userUid2){ %>
		  				<a href = "boardDelete?boardUid=<%=boardUid%>"><input type = "button" value = "삭제" style = "float:right;  margin-left: 15px;""></a>
		  				<a href = "boardUpdate.jsp?boardUid=<%=boardUid%>"><input type = "button" value = "수정" style = "float:right;"></a>
		  					<%} %>
		  					<td colspan = "3">
		  					<img src="./foldername/<%=vo.getImgName()%>" width = "300" height = "300" >
		  					</td>
		  					<br><br>
		  				</tr>
		  				
		  				
		  				<tr >
							<td id = "b_content" colspan = "3">
								<%=vo.getB_content() %>
							<br><br><br><br><br><br><br>
							</td>
		  				</tr>
		  				
		 
						<tr >
							<td colspan = "3"><hr></td>						
						</tr>
		  				<tr>
							<td style="float: right;position: relative;left: 250px;">조회수 <%=vo.getB_count() %></td>
							<td>
							<input id="like_btn" type="image" src = "imgs/like.png" value = "좋아요" onclick = "like()" style=" width : 20px; height :20px; position: relative;left: 270px;"">
							<span id="like_result" style="position: relative;left: 280px;top: -4px;"></span>
							</td>
						</tr>
		  			</table>
                       
                       <br><br><br><br>
                    <span style="position: relative;top: -110px;">댓글 </span>  
                       <form action = "commServiceCon">
                       <input type="hidden" name="boardUid" value="<%=vo.getBoardUid()%>">
                       <textarea name ="content" rows="3" cols="30" style="margin: 0px; width: 691px; height: 67px; position: relative; top: -100px;"></textarea>
                       <br><br>
                       
                       <input id = "submit" type="submit" value="등록" style=" float: right;width: 100px;height: 40px;position: relative;top: -100px; ">
                       
                       </form> 
                       <hr    style="    position: relative; top: -70px; width:700px">
                       <%for(int i=0;i<comm_list.size();i++){ %>
                       <div>
                       <span><%=name %>님</span><br>
                       <span><%=comm_list.get(i).getC_content()%></span><br>
                       <span><%=comm_list.get(i).getC_date() %></span>
                       <br>
                       </div>
                       <br>
                       <%} %>
                       
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
                       
                      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script type = "text/javascript">
			function like() {
			var board_num = <%= boardUid%>
			var btn_like = document.getElementById("like_btn");
			//스크립트에서 var로 선언하는 변수는 겹쳐도 된다.
			//스크립트안에서는 ==된다..
			if(btn_like.value == "좋아요"){
			$.ajax({
				type : "post", //전송방식
				url : "likeService",//서버파일이름
				data : {"board_num":<%= boardUid%>}, //서버로 보내는 값
				dataType : "text", //서버에서 오는 응답방식
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
					btn_like.src = "imgs/redlike.png"
					btn_like.value = "좋아요취소"
					
				},
				error : function(){
					alert("요청실패");
				}
			});
		}else{
			$.ajax({
				type : "post", //전송방식
				url : "dislikeService",//서버파일이름
				data : {"board_num":<%= boardUid%>}, //서버로 보내는 값
				dataType : "text", //서버에서 오는 응답방식
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
					btn_like.src = "imgs/like.png"
					btn_like.value = "좋아요"
				},
				error : function(){
					alert("요청실패");
				}
			});
		}
		
		
		
	}
</script>


</body>
</html>