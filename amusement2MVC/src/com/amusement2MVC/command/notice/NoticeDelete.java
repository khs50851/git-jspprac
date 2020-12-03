package com.amusement2MVC.command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;

public class NoticeDelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		String bno = request.getParameter("bno");
		NoticeDAO ndao = NoticeDAO.getInstance();
		int result = ndao.NoticeDelete(bno);
		if(result == 1) {
			request.setAttribute("dmsg", result);
		}
		

	}

}
