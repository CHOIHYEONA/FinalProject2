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
				<h3>Vegetarianism</h3>
				<ul>
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/search.png"></a></li>
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/search.png"></a></li>
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/person.png"></a></li>
					<li><a href="http://localhost:8081/2021/main.jsp"><img
							src="imgs/main/top/menu.png"></a></li>
				</ul>
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
					<form action="">
						<ul>
							<li><p>���̵�</p>
							<li><input type="text" placeholder="4~12�� ����, ���� ����" required="required"><input type="button" value="�ߺ�Ȯ��">
							<li><p>��й�ȣ</p>
							<li><input type="password" placeholder="����,����,Ư������ ���� 8�� �̻�" required="required">
							<li><p>��й�ȣ Ȯ��</p>
							<li><input type="password" placeholder="��й�ȣ Ȯ��" required="required">
							<li><p>ä�� �ܰ�</p>
							<li><select  required="required">
								<option> �÷����׸��� </option>
								<option>����</option>
								<option>�佺��</option>
								<option>���� ����</option>
								<option>����</option>
								<option>����</option>
								<option>���</option>
							</select>
							<input type="button" value="Ȯ���ϱ�">
							<li><input type="submit" value="ȸ������">
						</ul>
					</form>
				</div>
			</div>


			<!---------- ������ �ϴ� ���� ---------->
			<div id="footer">
				<div class="UnderBar"></div>
				<h3>����Ʈ���簳�߿� IoT �� ������ ���� ������Ʈ</h3>
				<h5>�̻���, ������, ������, ������, ä��</h5>
			</div>
		</div>
	</div>
</body>
</html>