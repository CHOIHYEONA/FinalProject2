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

@WebServlet("/boardupload")
public class boardupload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		System.out.println("������ε�");
		String saveDri ="C:\\Users\\Chosun\\git\\FinalProject2\\FinalProject2\\WebContent\\foldername";
		//������ ������ ��ġ�� ������
		System.out.println(saveDri);
		int maxSize = 5*1024*1024;
		//5MB ���� ũ�� �ִ�ġ ������
		String encoding = "EUC-KR";
		MultipartRequest multi = new MultipartRequest(request,saveDri,maxSize, encoding ,new DefaultFileRenamePolicy());
		
		String b_title = multi.getParameter("title");
		String filename=multi.getFilesystemName("filename");
		String b_content = multi.getParameter("content");
		
		System.out.println(filename);
		// ���ε��� ������ ��ü ��θ� DB�� �����ϱ� ����
		
		String b_fileFullPath = saveDri + "/" + filename;
		HttpSession session=request.getSession();
		customersVO info = (customersVO)session.getAttribute("info");
		
		

		String name = info.getUserName();
		int userUid = info.getUserUid();
		
		
		System.out.println(b_title + b_fileFullPath + b_content );
		boardVO vo = new boardVO(b_title,filename, b_content, userUid);
		boardDAO dao = new boardDAO();
		int cnt = dao.insertData(vo);
		
		if(cnt>0) {
			System.out.println("������ ��� �Ϸ� ! ");
			
		}
		else {
			
			System.out.println("������ ��� ���� ! ");
		}
		response.sendRedirect("board.jsp");
	
	}

}
