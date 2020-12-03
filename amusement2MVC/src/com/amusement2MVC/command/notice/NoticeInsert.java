package com.amusement2MVC.command.notice;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.vo.NoticeVO;

public class NoticeInsert implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		NoticeVO nvo = new NoticeVO();
		nvo.setTitle(title);
		nvo.setContent(content);
		nvo.setWriter(writer);
		NoticeDAO ndao = NoticeDAO.getInstance();
		ndao.noticeInsert(nvo);

	}

}
