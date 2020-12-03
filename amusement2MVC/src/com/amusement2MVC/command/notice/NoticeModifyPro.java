package com.amusement2MVC.command.notice;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.vo.NoticeVO;


public class NoticeModifyPro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int bno = Integer.parseInt(request.getParameter("bno"));
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int pageNum= Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int result = 0;
		NoticeVO vo = new NoticeVO();
		vo.setBno(bno);
		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContent(content);
		NoticeDAO dao = NoticeDAO.getInstance();
		try {
			result = dao.noticeUpdate(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("result3", result);
		
		try {
			RequestDispatcher disp = request.getRequestDispatcher("notice.do?pageNum="+pageNum+"&amount="+amount);
			
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
