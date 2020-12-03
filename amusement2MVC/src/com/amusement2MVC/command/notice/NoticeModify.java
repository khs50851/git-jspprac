package com.amusement2MVC.command.notice;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.NoticeVO;

public class NoticeModify implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		String bno = request.getParameter("bno");
		Criteria cri = new Criteria(pageNum, amount);
		
		
		NoticeDAO ndao = NoticeDAO.getInstance();
		NoticeVO nvo = ndao.noticeView(bno);
		request.setAttribute("nvo", nvo);
		request.setAttribute("cri", cri);
		
	}

}
