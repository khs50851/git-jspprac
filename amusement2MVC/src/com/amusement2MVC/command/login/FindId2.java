package com.amusement2MVC.command.login;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.vo.MemberVO;

public class FindId2 implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String birth2 = request.getParameter("birth2");
		String birth1 = request.getParameter("birth1");
		String name = request.getParameter("name");
		String birth = birth1+birth2;
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		String id = mdao.idcheck3(birth, name);
		request.setAttribute("id", id);
		
		
		
		
	}

}
