package com.amusement2MVC.command.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.ClistVO;

public class Cuslist implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		bbsDAO bdao = bbsDAO.getInstance();
		ClistVO cvo = new ClistVO();
		List<ClistVO> clist = bdao.Clist();
		request.setAttribute("colist", clist);
		
	}

}
