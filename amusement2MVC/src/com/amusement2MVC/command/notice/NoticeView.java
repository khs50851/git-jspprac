package com.amusement2MVC.command.notice;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.NoticeVO;
import com.amusement2MVC.vo.PageVO;

public class NoticeView implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String bno = request.getParameter("bno");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		NoticeDAO ndao = NoticeDAO.getInstance();
		NoticeVO nvo = ndao.noticeView(bno);
		
		NoticeVO prevo = ndao.preByCode(bno);
		NoticeVO nextvo = ndao.nextByCode(bno);
		
		
		Criteria cri = new Criteria(1, 10);
		
		request.setAttribute("cri", cri);
		
		request.setAttribute("prevo", prevo);
		request.setAttribute("view", nvo);
		request.setAttribute("nextvo", nextvo);

		
		

	}

}
