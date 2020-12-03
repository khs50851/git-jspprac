package com.amusement2MVC.command.member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.util.Utility;
import com.amusement2MVC.vo.MemberVO;

public class MemberUpdatePro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = Utility.encoding(request.getParameter("pw1")); 
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		
		MemberVO mvo = new MemberVO();
		mvo.setName(name);
		mvo.setId(id);
		mvo.setPw(pw);
		mvo.setTel(tel);
		mvo.setEmail(email);
		mvo.setAddress(address);
		mvo.setBirth(birth);
		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.memberInsert(mvo);
			request.setAttribute("result2", result);

	}

}
