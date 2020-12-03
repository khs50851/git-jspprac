package com.amusement2MVC.command.member;

import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.vo.MemberVO;

public class FindPw2 implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String id = request.getParameter("id");
		String birth1 = request.getParameter("birth1");
		String birth2 = request.getParameter("birth2");
		String birth = birth1+birth2;
		
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo.setId(id);
		mvo.setBirth(birth);
		mvo = mdao.pwcheck2(mvo);
		request.setAttribute("mvo", mvo);
		
	}

}
