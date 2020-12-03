package com.amusement2MVC.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command.bbs.Bbs;
import com.amusement2MVC.command.bbs.BbsView;
import com.amusement2MVC.command.bbs.Bbsdelete;
import com.amusement2MVC.command.bbs.Bbsmodify;
import com.amusement2MVC.command.bbs.Bbsmodifypro;
import com.amusement2MVC.command.bbs.Bbswrite;
import com.amusement2MVC.command.bbs.BbswritePro;
import com.amusement2MVC.command.event.Detailevent2;
import com.amusement2MVC.command.event.Event;
import com.amusement2MVC.command.intro.Introduce;
import com.amusement2MVC.command.intro.TrafficInfo;
import com.amusement2MVC.command.login.FindId;
import com.amusement2MVC.command.login.FindId2;
import com.amusement2MVC.command.login.Login;
import com.amusement2MVC.command.login.LoginPro;
import com.amusement2MVC.command.login.Logout;
import com.amusement2MVC.command.main.Main;
import com.amusement2MVC.command.manager.Cuslist;
import com.amusement2MVC.command.manager.Cuslist2;
import com.amusement2MVC.command.member.FindPw;
import com.amusement2MVC.command.member.FindPw2;
import com.amusement2MVC.command.member.FindPw3;
import com.amusement2MVC.command.member.FindPw3Pro;
import com.amusement2MVC.command.member.MemberInsert;
import com.amusement2MVC.command.member.MemberInsertPro;
import com.amusement2MVC.command.member.MemberUpdate;
import com.amusement2MVC.command.member.MemberUpdatePro;
import com.amusement2MVC.command.member.Terms;
import com.amusement2MVC.command.notice.Notice;
import com.amusement2MVC.command.notice.NoticeDelete;
import com.amusement2MVC.command.notice.NoticeInsert;
import com.amusement2MVC.command.notice.NoticeModify;
import com.amusement2MVC.command.notice.NoticeModifyPro;
import com.amusement2MVC.command.notice.NoticeView;
import com.amusement2MVC.command.notice.NoticeWrite;
import com.amusement2MVC.command.payment.Comingdate;
import com.amusement2MVC.command.payment.Comingdate2;
import com.amusement2MVC.command.payment.Mconfirm;
import com.amusement2MVC.command.payment.Mselect;
import com.amusement2MVC.command.payment.Mselect2;
import com.amusement2MVC.command.payment.Payment;
import com.amusement2MVC.command.payment.Reservedelete;
import com.amusement2MVC.command.payment.Resvcheck;
import com.amusement2MVC.command.payment.Rpayment;
import com.amusement2MVC.command.payment.mconfirm2;
import com.amusement2MVC.command.payment.rpayment2;
import com.amusement2MVC.command.ride.Ride;



/**
 * Servlet implementation class Controller
 */
@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
    public Controller() {
        super();


        
    }



    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		actionDO(request,response);
		
	}



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		actionDO(request,response);
	}

	

	protected void actionDO(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String viewPage=null;
//		Notice command = null;
//		Member member = null;
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		System.out.println(uri);
		System.out.println(conPath);
		String com = uri.substring(conPath.length());
		System.out.println(com);
		
		switch(com) {
		case "/main.do" :
			new Main().execute(request, response);
			viewPage = "index.jsp";
			break;
		case "/memberinsert.do" :
			new MemberInsert().execute(request, response);
			viewPage = "member/memberinsert.jsp";
			break;
			
		case "/memberinsertpro.do" :	
			new MemberInsertPro().execute(request, response);
			viewPage = "index.jsp";
			break;
		case "/login.do" :	
			new Login().execute(request, response);
			viewPage = "login/login.jsp";
			break;
			
		case "/loginpro.do" :	
			new LoginPro().execute(request, response);
			break;
		
		case "/logout.do" :	
			new Logout().execute(request, response);
			viewPage = "login/logout.jsp";
			break;
		case "/memberupdate.do" :	
			new MemberUpdate().execute(request, response);
			viewPage = "member/memberupdate.jsp";
			break;
			
		case "/memberupdatepro.do" :
			new MemberUpdatePro().execute(request, response);
			viewPage = "index.jsp";
			break;
			
		case "/findid.do" :	
			new FindId().execute(request, response);
			viewPage = "login/findid.jsp";
			break;
		
		case "/findid2.do" :	
			new FindId2().execute(request, response);
			viewPage = "login/findid2.jsp";
			break;
			
		case "/findpw.do" : 	
			new FindPw().execute(request, response);
			viewPage = "member/findpw.jsp";
			break;
			
		case "/findpw2.do" :	
			new FindPw2().execute(request, response);
			viewPage = "member/findpw2.jsp";
			break;
			
			
		case "/findpw3.do" :	
			new FindPw3().execute(request, response);
			viewPage = "member/findpw3.jsp";
			break;
		
		case "/notice.do" :
			new Notice().execute(request, response);
			viewPage = "notice/notice.jsp";
			break;
		case "/noticewrite.do" :
			new NoticeWrite().execute(request, response);
			viewPage = "notice/noticewrite.jsp";
			break;
			
		case "/noticeinsert.do" :
			new NoticeInsert().execute(request, response);
			viewPage = "notice.do";
			break;
		case "/noticeview.do":	
			new NoticeView().execute(request, response);
			viewPage = "notice/noticeview.jsp";
			break;
		case "/noticedelete.do" :	
			new NoticeDelete().execute(request, response);
			viewPage ="notice/notice.jsp";
			break;
		case "/noticemodify.do" :	
			new NoticeModify().execute(request, response);
			viewPage = "notice/noticemodify.jsp";
			break;
		case "/noticemodifypro.do" :	
			new NoticeModifyPro().execute(request, response);
			break;
			
		case "/payment.do" :	
			new Payment().execute(request, response);
			viewPage = "payment/payment.jsp";
			break;
		case "/comingdate.do" :	
			new Comingdate().execute(request, response);
			viewPage = "payment/comingdate.jsp";
			break;
		case "/mselect.do" :	
			new Mselect().execute(request, response);
			viewPage = "payment/mselect.jsp";
			break;
			
		case "/mconfirm.do" :	
			new Mconfirm().execute(request, response);
			viewPage = "payment/mconfirm.jsp";
			break;
			
		case "/rpayment.do" :
			new Rpayment().execute(request, response);
			break;
			
		case "/resvcheck.do" :	
			new Resvcheck().execute(request, response);
			viewPage = "payment/resvcheck.jsp";
			
			break;
			
		case "/comingdate2.do" :	
			new Comingdate2().execute(request, response);
			viewPage = "payment/comingdate2.jsp";
			break;
			
		case "/mselect2.do" :	
			new Mselect2().execute(request, response);
			viewPage = "payment/mselect2.jsp";
			break;
			
		case "/mconfirm2.do" :	
			new mconfirm2().execute(request, response);
			viewPage = "payment/mconfirm2.jsp";
			break;
		
		case "/rpayment2.do" :	
			new rpayment2().execute(request, response);
			break;
			
		case "/introduce.do" :	
			new Introduce().execute(request, response);
			viewPage = "intro/introduce.jsp";
			break;

		case "/ride.do" :	
			new Ride().execute(request, response);
			viewPage = "ride/ride.jsp";
			break;
			
		case "/event.do" :	
			new Event().execute(request, response);
			viewPage = "event/event.jsp";
			break;
			
		case "/detailevent2.do" :	
			new Detailevent2().execute(request, response);
			viewPage = "event/detailevent2.jsp";
			break;
			
		case "/trafficinfo.do" :	
			new TrafficInfo().execute(request, response);
			viewPage = "intro/trafficinfo.jsp";
			break;
			
		case "/bbswrite.do" :	
			new Bbswrite().execute(request, response);
			viewPage = "bbs/bbswrite.jsp";
			break;
		
		case "/bbswritepro.do" :
			new BbswritePro().execute(request, response);
			break;
			
		case "/bbs.do" :	
			new Bbs().execute(request, response);
			viewPage = "bbs/bbs.jsp";
			break;
			
		case "/bbsview.do" :
			new BbsView().execute(request, response);
			viewPage="bbs/bbsview.jsp";
			break;
			
		case "/bbsdelete.do" :	
			new Bbsdelete().execute(request, response);
			break;
			
		case "/bbsmodify.do" :	
			new Bbsmodify().execute(request, response);
			viewPage="bbs/bbsmodify.jsp";
			break;
			
		case "/bbsmodifypro.do" :	
			new Bbsmodifypro().execute(request, response);
			break;
			
			
		case "/terms.do" :	
			new Terms().execute(request, response);
			viewPage = "member/terms.jsp";
			break;
			
		case "/cuslist.do" :	
			new Cuslist().execute(request, response);
			viewPage = "manager/cuslist.jsp";
			break;
			
		case "/reservedelete.do" :	
			new Reservedelete().execute(request, response);
			viewPage = "index.jsp";
			break;
			
		case "/cuslist2.do" :	
			new Cuslist2().execute(request, response);
			viewPage = "manager/cuslist2.jsp";
			break;	
			
		}
		
		
		
		
			
		if(viewPage!= null) {
		RequestDispatcher disp = request.getRequestDispatcher(viewPage);
		disp.forward(request, response);
		
		}
		
		
		
		
		
		
		
	}

	
	
}
