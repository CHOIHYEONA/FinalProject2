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
<title>ä�ķ�����</title>
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
							<li><a href="">�������</a> </li>
							<li><a href="map_walk">��å��</a> </li>
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
		�Խù� 
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
							<td>��ȸ�� <%=vo.getB_count() %></td>
							<td><input id="like_btn" type="button" value="���ƿ�" onclick = "like()" style="  float: right;">
							<span id="like_result"></span>
							</td>
						</tr>
		  			</table>
                       
                       <br><br><br><br>
                    <span>��� </span>   <hr>
                       <form action = "commServiceCon">
                       <input type="hidden" name="boardUid" value="<%=vo.getBoardUid()%>">
                       <textarea name ="content" rows="3" cols="30" style="margin: 0px; width: 691px; height: 67px;"></textarea>
                       <br><br>
                       
                       <input id = "submit" type="submit" value="���" style=" float: right;width: 100px;height: 40px;position: relative;top: -10px; ">
                       
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

	
		<!---------- ������ �ϴ� ���� ---------->
		<div id="footer">
			
			<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
			<h5>������, ������, �����, ����ö, ������</h5>
		</div>
	</div>
                       
                      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script type = "text/javascript">
			function like() {
			var board_num = document.getElementById("board_num");
			var btn_like = document.getElementById("like_btn");
			//��ũ��Ʈ���� var�� �����ϴ� ������ ���ĵ� �ȴ�.
			//��ũ��Ʈ�ȿ����� ==�ȴ�..
			if(btn_like.value == "���ƿ�"){
			$.ajax({
				type : "post", //���۹��
				url : "likeService",//���������̸�
				data : {"board_num":board_num.innerHTML}, //������ ������ ��
				dataType : "text", //�������� ���� ������
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
					btn_like.value = "���ƿ����"
					
				},
				error : function(){
					alert("��û����");
				}
			});
		}else{
			$.ajax({
				type : "post", //���۹��
				url : "dislikeService",//���������̸�
				data : {"board_num":board_num.innerHTML}, //������ ������ ��
				dataType : "text", //�������� ���� ������
				success: function(data){
					//alert(data);
					var result = document.getElementById("like_result");
					result.innerHTML = data;
					
					var btn_like = document.getElementById("like_btn");
					btn_like.value = "���ƿ�"
				},
				error : function(){
					alert("��û����");
				}
			});
		}
		
		
		
	}
</script>


</body>
</html>