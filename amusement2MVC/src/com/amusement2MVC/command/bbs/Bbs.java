package com.amusement2MVC.command.bbs;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.PageVO;
import com.amusement2MVC.vo.bbsVO;

public class Bbs implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

			response.setCharacterEncoding("utf-8");
		int pageNum=1;
		int amount=10;
		
		if(request.getParameter("pageNum")!=null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
//			amount = 10;
			
		}else {
			pageNum = 1;
			amount = 10;
		}
		
		
		bbsDAO bdao = new bbsDAO();
		List<bbsVO> blist = null;
		Criteria cri = new Criteria();
		PageVO pvo = null;
		int totcount = 0;
		String sel =  "";
		String word="";
		String query="";
		
		

		if(request.getParameter("sel") != null && !request.getParameter("word").equals("")) {
			sel = request.getParameter("sel");
			word = request.getParameter("word");
			query = sel+" like '%"+word+"%'";
		}
		
		cri.setAmount(amount);
		cri.setPageNum(pageNum);
		cri.setKeyword(word);
		cri.setType(sel);
		
		totcount = bdao.bbsCount(query);
		blist = bdao.getbbsWithPaging(cri, query);
		pvo = new PageVO(cri, totcount);
		
		request.setAttribute("pageMaker", pvo);
		request.setAttribute("list", blist);
		request.setAttribute("totcount", totcount);
		
		
		

		
		
		
		

		
		
		
		

		
		
		
		

		
		
		
		
		
		
		
	}

}
