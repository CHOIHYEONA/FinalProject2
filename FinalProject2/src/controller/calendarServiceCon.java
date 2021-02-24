package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.calendarDAO;
import model.customersVO;

@WebServlet("/calendarServiceCon")
public class calendarServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("calendarServiceCon");
		
		request.setCharacterEncoding("euc-kr");

		HttpSession session=request.getSession();
		customersVO info = (customersVO)session.getAttribute("info");
		
		String date = request.getParameter("currentdate");
		String text = request.getParameter("dotext");
		int userUid = info.getUserUid();
		System.out.println(date);
		System.out.println(text);
		
		calendarDAO dao = new calendarDAO();
		int cnt = dao.insertData(date, text, userUid);
		
		if(cnt>0) {
			
			System.out.println("자료등록ㅇㅇ! ");
			
			
		}
		else {
			
			System.out.println("실패 ! ");
		}
		
		
		
		
	}

}
