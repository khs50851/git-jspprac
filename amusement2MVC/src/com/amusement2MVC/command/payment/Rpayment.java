package com.amusement2MVC.command.payment;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.dao.paymentDAO;
import com.amusement2MVC.vo.MemberVO;
import com.amusement2MVC.vo.PaymentVO;

public class Rpayment implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String cdate = request.getParameter("cdate");
		int result = 0;
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("userid");
		String creditnum1 = request.getParameter("creditnum1");
		String creditnum2 = request.getParameter("creditnum2");
		String creditnum3 = request.getParameter("creditnum3");
		String creditnum4 = request.getParameter("creditnum4");
		String creditnum = creditnum1+creditnum2+creditnum3+creditnum4;
		String creditpw = request.getParameter("creditpw");
		
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo = mdao.memUpdate(id);
		int bno = mvo.getBno();
		PaymentVO payvo = new PaymentVO();
		paymentDAO paydao = paymentDAO.getInstance();
		
		
		if(request.getParameter("pname1") != null) {
			String pname1 = request.getParameter("pname1");
			String ptype1 = request.getParameter("ptype1");
			int pprice1 = Integer.parseInt(request.getParameter("pprice1"));
			int pnumbers1 = Integer.parseInt(request.getParameter("pnumbers1"));
			int pbno1 = Integer.parseInt(request.getParameter("pbno1"));
			result = paydao.addpayment(bno, pbno1, pnumbers1, cdate, creditnum, creditpw);
			}
		
		
		
			
			if(request.getParameter("pname2") != null) {
				String pname2 = request.getParameter("pname2");
				String ptype2 = request.getParameter("ptype2");
				int pprice2 = Integer.parseInt(request.getParameter("pprice2"));
				int pnumbers2 = Integer.parseInt(request.getParameter("pnumbers2"));
				int pbno2 = Integer.parseInt(request.getParameter("pbno2"));
				result = paydao.addpayment(bno, pbno2, pnumbers2, cdate, creditnum, creditpw);
			}
			
			
			if(request.getParameter("pname3") != null) {
				String pname3 = request.getParameter("pname3");
				String ptype3 = request.getParameter("ptype3");
				int pprice3 = Integer.parseInt(request.getParameter("pprice3"));
				int pnumbers3 = Integer.parseInt(request.getParameter("pnumbers3"));
				int pbno3 = Integer.parseInt(request.getParameter("pbno3"));
				result = paydao.addpayment(bno, pbno3, pnumbers3, cdate, creditnum, creditpw);
			
			}
			
			if(request.getParameter("pname4") != null) {
				String pname4 = request.getParameter("pname4");
				String ptype4 = request.getParameter("ptype4");
				int pprice4 = Integer.parseInt(request.getParameter("pprice4"));
				int pnumbers4 = Integer.parseInt(request.getParameter("pnumbers4"));
				int pbno4 = Integer.parseInt(request.getParameter("pbno4"));
				result= paydao.addpayment(bno, pbno4, pnumbers4, cdate, creditnum, creditpw);
			
			}
		
			
		request.setAttribute("payresult", result);
		RequestDispatcher disp = request.getRequestDispatcher("main.do");
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
