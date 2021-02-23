<%@page import="model.customersVO"%>
<%@page import="model.commVO"%>
<%@page import="model.commDAO"%>
<%@page import="model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
}


</style>
<link rel=" shortcut icon" href="imgs/favicon.ico">
<link rel="icon" href="imgs/favicon.ico">
<meta charset="EUC-KR">
<title>채식레시피</title>
<link rel="stylesheet" href="css/boardone1.css">

</head>
<body>
<%
customersVO info = (customersVO)session.getAttribute("info");

boardDAO dao = new boardDAO();

int boardUid = Integer.parseInt(request.getParameter("boardUid"));
String name = info.getUserName();
boardVO vo = dao.getOneBoard(boardUid);
 
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
							<li><a href="">공공장소</a> </li>
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
		  					<td colspan = "2"><img src="./foldername/<%=vo.getImgName()%>" width = "300" height = "300" >
		  					<br><br>
		  				</tr>
		  				
		  				<tr >
							<td id = "b_content" colspan = "2">
								<%=vo.getB_content() %>
							</td>
		  				</tr>
		  				<tr height="200px">
							<td>
								
							</td>
		  				</tr>
						<tr >
							<td colspan = "3"><hr></td>						
						</tr>
		  				<tr>
							<td>조회수 <%=vo.getB_count() %></td>
							<td><input id="like_btn" type="button" value="좋아요" onclick = "like()" style="  float: right;">
							<span id="like_result"></span>
							</td>
						</tr>
		  			</table>
                       
                       <br><br><br><br>
                    <span>댓글 </span>   <hr>
                       <form action = "commServiceCon">
                       <input type="hidden" name="boardUid" value="<%=vo.getBoardUid()%>">
                       <textarea name ="content" rows="3" cols="30" style="margin: 0px; width: 691px; height: 67px;"></textarea>
                       <br><br>
                       
                       <input id = "submit" type="submit" value="등록" style=" float: right;width: 100px;height: 40px;position: relative;top: -10px; ">
                       
                       </form> <br> <br>
                       <hr>
                       <%for(int i=0;i<comm_list.size();i++){ %>
                       <div>
                       <span><%=name %></span><br>
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
			var board_num = document.getElementById("board_num");
			var btn_like = document.getElementById("like_btn");
			//스크립트에서 var로 선언하는 변수는 겹쳐도 된다.
			//스크립트안에서는 ==된다..
			if(btn_like.value == "좋아요"){
			$.ajax({
				type : "post", //전송방식
				url : "likeService",//서버파일이름
				data : {"board_num":board_num.innerHTML}, //서버로 보내는 값
				dataType : "text", //서버에서 오는 응답방식
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
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
				data : {"board_num":board_num.innerHTML}, //서버로 보내는 값
				dataType : "text", //서버에서 오는 응답방식
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
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