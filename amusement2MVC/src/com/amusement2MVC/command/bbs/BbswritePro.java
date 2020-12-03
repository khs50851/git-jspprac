package com.amusement2MVC.command.bbs;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.bbsVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BbswritePro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String title = "";
		String id = "";
		String content = "";
		String filename="";
		ServletContext svc = request.getServletContext();
		String path = svc.getRealPath("bbsupload");
		String encType = "utf-8";
		int uploadSizeLimit = 20 * 1024 * 1024;
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, path, uploadSizeLimit, encType, new DefaultFileRenamePolicy());
			title = multi.getParameter("title");
			id = multi.getParameter("id");
			content = multi.getParameter("content");
		
				filename = multi.getFilesystemName("fileName");
			
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		bbsVO bvo = new bbsVO();
		bvo.setId(id);
		bvo.setTitle(title);
		bvo.setContent(content);
		bvo.setFile_name(filename);
		bbsDAO bdao = new bbsDAO();
		
		int result = bdao.insertArticle(bvo);
		
		if(result == 1) {
			request.setAttribute("rt", result);
		}else {
			request.setAttribute("rt", result );
		}
		
		RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
		try {
			disp.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
