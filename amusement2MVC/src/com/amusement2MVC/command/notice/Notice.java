package com.amusement2MVC.command.notice;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.NoticeVO;
import com.amusement2MVC.vo.PageVO;

public class Notice implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setCharacterEncoding("utf-8");
		int pageNum = 1;
		int amount = 10;
		
		if(request.getParameter("pageNum")!=null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
//			amount = 10;
			
		}else {
			pageNum = 1;
			amount = 10;
		}
		
		
		
		NoticeDAO ndao = NoticeDAO.getInstance();
		List<NoticeVO> list = null;
		Criteria cri = new Criteria();
		PageVO pvo = null;
		int totcount = 0;
		String sel = "";
		String word = "";
		String query = "";
		
		if(request.getParameter("sel") != null && !request.getParameter("word").equals("")) {
			sel = request.getParameter("sel");
			word = request.getParameter("word");
			query = sel+" like '%"+word+"%'";
			
		}
		
		
		cri.setAmount(amount);
		cri.setPageNum(pageNum);
		cri.setType(sel);
		cri.setKeyword(word);
		totcount = ndao.noticeCount(query);
		list = ndao.getListWithPaging(cri, query);
		pvo = new PageVO(cri, totcount);
		
		
		request.setAttribute("pageMaker", pvo);
		request.setAttribute("list", list);
		request.setAttribute("totcount", totcount);
		
	}

}
