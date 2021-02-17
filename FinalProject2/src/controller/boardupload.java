package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/boardupload")
public class boardupload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		System.out.println("보드업로드");
		String saveDri = request.getServletContext().getRealPath("files");
		//저장할 파일의 위치를 가져옴
		System.out.println(saveDri);
		int maxSize = 5*1024*1024;
		//5MB 파일 크기 최대치 정해줌
		String encoding = "EUC-KR";
		MultipartRequest multi = new MultipartRequest(request,saveDri,maxSize,encoding,new DefaultFileRenamePolicy());
		int cnt = 1;
		int cnt1=1;
	
		String title = multi.getParameter("title");
		String imgName = multi.getParameter("imgName");
		String b_content = multi.getParameter("content");
		
	
	
	}

}
