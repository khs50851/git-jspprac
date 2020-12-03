package com.amusement2MVC.command.bbs;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.bbsVO;

public class Bbsmodify implements Command {

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
		String article_number = request.getParameter("article_number");
		Criteria cri = new Criteria(pageNum, amount);
		bbsDAO bdao = bbsDAO.getInstance();
		bbsVO bvo = bdao.bbsemodify(article_number);
		request.setAttribute("nvo", bvo);
		request.setAttribute("cri", cri);
	}

}
