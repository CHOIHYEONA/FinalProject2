package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import model.customersDAO;
import model.customersVO;

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로그인서비스콘");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		customersDAO dao = new customersDAO();
		customersVO info = dao.login(id, pw);
		
		if(info != null) {
			System.out.println("로그인성공");
			 HttpSession session = request.getSession();
			 session.setAttribute("info", info);
		}else {
			System.out.println("로그인실패");
		}
		
		response.sendRedirect("main.jsp");
	}

}
