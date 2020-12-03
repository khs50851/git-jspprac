package com.amusement2MVC.command.payment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.dao.paymentDAO;
import com.amusement2MVC.vo.MemberVO;
import com.amusement2MVC.vo.ResvcheckVO;

public class Resvcheck implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		ResvcheckVO rvo = new ResvcheckVO();
			
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userid");
		paymentDAO pdao = new paymentDAO();
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo = mdao.memUpdate(id);
		int bno = mvo.getBno();
		List<ResvcheckVO> rlist = pdao.paymentlist(bno);
		request.setAttribute("mvo", mvo);
		request.setAttribute("rlist", rlist);

	}

}
