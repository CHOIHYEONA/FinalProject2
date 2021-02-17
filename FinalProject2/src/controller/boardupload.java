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
		String saveDri = request.getServletContext().getRealPath("files");
		//������ ������ ��ġ�� ������
		System.out.println(saveDri);
		int maxSize = 5*1024*1024;
		//5MB ���� ũ�� �ִ�ġ ������
		String encoding = "EUC-KR";
		MultipartRequest multi = new MultipartRequest(request,saveDri,maxSize,encoding,new DefaultFileRenamePolicy());
	
		String b_title = multi.getParameter("title");
		String imgName = multi.getFilesystemName("imgName");
		String b_content = multi.getParameter("content");
		HttpSession session=request.getSession();
		/*���ǰ����;��� customersVO vo =(customersVO)session.getAttribute("getdto");*/
		
		String filename=multi.getFilesystemName("fileName");
		
		int userUid = 2;
		//String name = getdto.name();
		//int userUid = getvo.userUid();
		
		System.out.println(b_title + imgName + b_content );
		boardVO vo = new boardVO(b_title, imgName, b_content, userUid);
		boardDAO dao = new boardDAO();
		int cnt = dao.insertData(vo);
		
		if(cnt>0) {
			System.out.println("������ ��� �Ϸ� ! ");
			response.sendRedirect("Myrecipelist.jsp");
		}
		else {
			
			System.out.println("������ ��� ���� ! ");
		}
	
	}

}
