package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.boardDAO;
import model.boardVO;
import model.customersDAO;

@WebServlet("/BoardServiceCon")
public class BoardServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("게시판서비스콘");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int userUid = Integer.parseInt(request.getParameter("userUid"));
		
		System.out.println("제목 :"+title);
		System.out.println("내용 :"+content);
		System.out.println("유저 :"+userUid);
		
		boardDAO dao = new boardDAO();
		boardVO vo = new boardVO(title, content, userUid);
		int cnt = dao.insertData(vo);
		if(cnt>0) {
			System.out.println("게시판성공");
		}else {
			System.out.println("게시판실패");
		}
		
		//response.sendRedirect(location);
	
	}

}
