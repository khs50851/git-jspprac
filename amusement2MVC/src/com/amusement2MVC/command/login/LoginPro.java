package com.amusement2MVC.command.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.util.Utility;

public class LoginPro implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = Utility.encoding(request.getParameter("pw"));
		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.memberLoginSearch(id,pw);
		
		HttpSession session = request.getSession();
		if(result==1) {
			session.setAttribute("userid", id);
			try {
				response.sendRedirect("main.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(result==0) {
			session.setAttribute("message", "비밀번호를 확인하세요");
			try {
				response.sendRedirect("login.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(result==-1){
			session.setAttribute("message", "존재하지 않는 아이디입니다");
			try {
				response.sendRedirect("login.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
