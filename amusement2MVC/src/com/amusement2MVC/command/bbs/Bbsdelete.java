package com.amusement2MVC.command.bbs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.bbsDAO;

public class Bbsdelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String article_number = request.getParameter("article_number");
		bbsDAO bdao = bbsDAO.getInstance();
		int result = bdao.bbsDelete(article_number);
		
		if(result == 1) {
			request.setAttribute("dmsg2", result);
		}
		
		RequestDispatcher disp = request.getRequestDispatcher("bbs/bbs.jsp");
		try {
			disp.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
