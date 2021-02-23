package controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		System.out.println("�α��μ�����");
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		
		customersDAO dao = new customersDAO();
		customersVO info = dao.login(id, pw);
		
		
		if(info != null) {
			System.out.println("�α��μ���");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			
			response.sendRedirect("main.jsp");
		}else {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			System.out.println("�α��ν���");
		    out.print("<script>alert('�α��ο� �����߽��ϴ�.'); location.href='login.jsp'; </script>");
		}
	}

}
