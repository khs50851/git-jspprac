package com.amusement2MVC.command.bbs;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.NoticeVO;
import com.amusement2MVC.vo.bbsVO;
import com.amusement2MVC.vo.commentVO;

public class BbsView implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int article_number = Integer.parseInt(request.getParameter("article_number"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		bbsDAO bdao = bbsDAO.getInstance();
		
		
		bbsVO bvo = bdao.bbsView(article_number);
		
		
		Criteria cri = new Criteria(1, 10);
		
		List<commentVO> clist = new ArrayList<commentVO>();
		
		clist = bdao.getCommentList(article_number);
		
		request.setAttribute("clist3", clist);
		
		request.setAttribute("cri", cri);
		request.setAttribute("view", bvo);
		
		
		
	}

}
