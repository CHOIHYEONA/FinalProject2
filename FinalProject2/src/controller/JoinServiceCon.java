package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.customersDAO;
import model.customersVO;

@WebServlet("/JoinServiceCon")
public class JoinServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("JoinServiceCon");
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
	
		customersDAO dao = new customersDAO();
		customersVO vo = new customersVO(id,pw,name,tel);
	
		int cnt = dao.join(id, pw, name, tel);
		
		if(cnt>0) {
			System.out.println("회원가입성공");
			//HttpSession session = request.getSession();
			response.sendRedirect("joinSucess.jsp");
			//세션값 뭐 보내지?
		}else {
			System.out.println("회원가입실패");
			response.sendRedirect("main.jsp");
		}
		
		
	}

}
