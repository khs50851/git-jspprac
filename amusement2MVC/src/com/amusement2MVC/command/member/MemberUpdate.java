package com.amusement2MVC.command.member;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.vo.MemberVO;

public class MemberUpdate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		MemberDAO mdao = MemberDAO.getInstance();
		MemberVO mvo = new MemberVO();
		mvo = mdao.memUpdate(id);
		request.setAttribute("mem", mvo);

	}

}
