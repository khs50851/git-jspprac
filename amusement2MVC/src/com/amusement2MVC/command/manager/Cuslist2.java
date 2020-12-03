package com.amusement2MVC.command.manager;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.ClistVO;
import com.amusement2MVC.vo.PageVO;

public class Cuslist2 implements Command {

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
		

		bbsDAO bdao = bbsDAO.getInstance();
		ClistVO cvo = new ClistVO();
		List<ClistVO> list = null;
		PageVO pvo = null;
		Criteria cri = new Criteria();
		
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
		totcount = bdao.cuscount(query);
		
		list = bdao.Clist2(cri,query);
		pvo = new PageVO(cri, totcount);
		request.setAttribute("colist2", list);
		request.setAttribute("pageMaker", pvo);
		request.setAttribute("totcount", totcount);
			
	}

}
