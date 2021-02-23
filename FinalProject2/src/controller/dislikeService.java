package controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.boardDAO;


@WebServlet("/dislikeService")
public class dislikeService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bn =Integer.parseInt(request.getParameter("board_num"));
		
		boardDAO dao = new boardDAO();
		
		int cnt = dao.updateDislike(bn);
		if(cnt>0) {
			System.out.println("좋취완료");
			int like = dao.selectLike(bn);
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.print(like);
		}else {
			System.out.println("좋취실패");
		}
	
	}

}
