package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.commDAO;
import model.commVO;
import model.customersVO;

@WebServlet("/commServiceCon")
public class commServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("commServiceCon");
		
		String content = request.getParameter("content");
		commDAO dao = new commDAO();
		int userUid = 2;
		int boardUid = 20;
		int cnt = dao.insertData(content, userUid,boardUid);
		
		if(cnt>0) {
			System.out.println("��ۿø��� ����");
		}else {
			System.out.println("��ۿø��� ����");
			
		}
		response.sendRedirect("boardone.jsp");
	}

}
