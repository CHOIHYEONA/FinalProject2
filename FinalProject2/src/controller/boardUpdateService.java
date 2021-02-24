package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.boardDAO;
import model.boardVO;
import model.customersVO;

@WebServlet("/boardUpdateService")
public class boardUpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("��������");
		String saveDri ="C:\\Users\\Chosun\\git\\FinalProject2\\FinalProject2\\WebContent\\foldername";
		//������ ������ ��ġ�� ������
		System.out.println(saveDri);
		int maxSize = 5*1024*1024;
		//5MB ���� ũ�� �ִ�ġ ������
		String encoding = "EUC-KR";
		MultipartRequest multi = new MultipartRequest(request,saveDri,maxSize, encoding ,new DefaultFileRenamePolicy());
		
		String b_title = multi.getParameter("title");
		String b_content = multi.getParameter("content");
		int boardUid = Integer.parseInt(multi.getParameter("boardUid"));
	
		String filename=multi.getFilesystemName("filename");
	
	
		String b_fileFullPath = saveDri + "/" + filename;
		HttpSession session=request.getSession();
		customersVO info = (customersVO)session.getAttribute("info");

		
		boardVO vo = new boardVO(boardUid, b_title, filename, b_content);
		boardVO vo2 = new boardVO(boardUid, b_title, b_content);
		boardDAO dao = new boardDAO();
		
		if(filename!=null) {
			int cnt = dao.updateall(vo);
			if(cnt>0) {
				System.out.println("������ ��� �Ϸ� ! ");
				
			}
			else {
				
				System.out.println("������ ��� ���� ! ");
			}
			response.sendRedirect("board.jsp");
		
		}else {
			
			int cnt = dao.update(vo2);
			if(cnt>0) {
				System.out.println("������ ��� �Ϸ� ! ");
				
			}
			else {
				
				System.out.println("������ ��� ���� ! ");
			}
			response.sendRedirect("board.jsp");
		}
	
	}

}
