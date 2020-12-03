package com.amusement2MVC.command.bbs;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.NoticeVO;
import com.amusement2MVC.vo.bbsVO;

public class Bbsmodifypro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int article_number = Integer.parseInt(request.getParameter("article_number"));
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int pageNum= Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int result = 0;
		bbsVO bvo = new bbsVO();
		bvo.setArticle_number(article_number);
		bvo.setId(id);
		bvo.setTitle(title);
		bvo.setContent(content);
		bbsDAO bdao = bbsDAO.getInstance();
		try {
			result = bdao.bbseUpdate(bvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("result4", result);
		
		try {
			RequestDispatcher disp = request.getRequestDispatcher("bbs.do?pageNum="+pageNum+"&amount="+amount);
			
			try {
				disp.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			response.sendRedirect("notice.do?pageNum="+pageNum+"&amount="+amount);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
