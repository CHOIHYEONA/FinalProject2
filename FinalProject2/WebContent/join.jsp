<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۳��� - ȸ������</title>
<link rel="stylesheet" href="css/join.css">
</head>
<body>



	<div class="frame">

		<!---------- ������ ��� ���� ---------->
		<div class="topFrame">


			<!-- �ֻ�� ���� -->
			<div id="top">
				<a href = "main.jsp"><img src ="imgs/logo.png"></a>
				
			</div>


			<!-- ���� ������ -->
			<div class="UnderBar"></div>


			<!-- ī�װ� ���� ��� -->
			<div id="topMenu"></div>


			<!---------- ������ �߰� ���� ---------->
			<div id="mainFrame">

				<!-- ȸ������ ���� -->
				<div id="mainContents" style="text-align: center;">
					<p>ȸ������</p>
					<form action="JoinServiceCon" method = "post">
						<ul>
							<li><p>���̵�</p>
<!-- 							<form action = "JoinServiceCon" method = "post"> -->
							<li><input type="text" placeholder="4~12�� ����, ���� ����" required="required" name = "id"><input type="button" value="�ߺ�Ȯ��">
							<li><p>��й�ȣ</p>
							<li><input type="password" placeholder="����,����,Ư������ ���� 8�� �̻�" required="required" name = "pw">
							<li><p>��й�ȣ Ȯ��</p>
							<li><input type="password" placeholder="��й�ȣ Ȯ��" required="required" name = "pwcheck">
							<li><p>�̸�</p>
							<li><input type="text" placeholder="�̸�" required="required" name = "name">
							<li><p>��ȭ��ȣ</p>
							<li><input type="text" placeholder="��ȭ��ȣ" required="required" name = "tel">
							<li><input type="submit" value="ȸ������">
							<!-- </form> -->
						</ul>
					</form>
				</div>
			</div>


			<!---------- ������ �ϴ� ���� ---------->
			
		</div>
	</div>
</body>
</html>