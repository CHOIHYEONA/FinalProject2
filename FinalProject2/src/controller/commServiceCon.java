package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.boardVO;
import model.commDAO;
import model.commVO;
import model.customersVO;

@WebServlet("/commServiceCon")
public class commServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("commServiceCon");
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("boardone.jsp");
		HttpSession session=request.getSession();
		customersVO info = (customersVO)session.getAttribute("info");
		int userUid = info.getUserUid();
		int boardUid = Integer.parseInt(request.getParameter("boardUid"));
		String content = request.getParameter("content");
		System.out.println("===================");
		System.out.println(boardUid);
		System.out.println(userUid);
		System.out.println(content);
		
		commDAO dao = new commDAO();
		int cnt = dao.insertData(content, userUid,boardUid);
		
		if(cnt>0) {
			System.out.println("댓글올리기 성공");
		}else {
			System.out.println("댓글올리기 실패");
			
		}
		
		dispatcher.forward(request, response);
	}

}
