package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.boardDAO;

@WebServlet("/boardDelete")
public class boardDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int boardUid = Integer.parseInt( request.getParameter("boardUid"));
		System.out.println(boardUid);
	
	boardDAO dao = new boardDAO();
	int cnt = dao.deleteboard(boardUid);
	if(cnt>0) {
		System.out.println("삭제완료");
	}else {
		System.out.println("삭제실패");
	}
	response.sendRedirect("main.jsp");

}
	}


