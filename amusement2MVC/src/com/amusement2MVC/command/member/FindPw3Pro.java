package com.amusement2MVC.command.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.util.Utility;
import com.amusement2MVC.vo.MemberVO;

public class FindPw3Pro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		String id = request.getParameter("id");
		String pw = Utility.encoding(request.getParameter("pw1"));
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo.setId(id);
		mvo.setPw(pw);
		int result3 = mdao.mempwUpdateOk(mvo);
		request.setAttribute("result3", result3);

	}

}
