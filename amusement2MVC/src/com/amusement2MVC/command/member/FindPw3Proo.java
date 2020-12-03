package com.amusement2MVC.command.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.util.Utility;
import com.amusement2MVC.vo.MemberVO;

/**
 * Servlet implementation class FindPw3Proo
 */
@WebServlet("/findpwpro3.do")
public class FindPw3Proo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPw3Proo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = Utility.encoding(request.getParameter("pw1"));
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo.setId(id);
		mvo.setPw(pw);
		
		int result3 = mdao.mempwUpdateOk(mvo);
		JSONObject obj = new JSONObject();
		
			obj.put("mdck", "パスワードが修正されました。");
			
		
		
		 response.setContentType("application/x-json,charset=utf-8");
	     	response.getWriter().print(obj);
		
		
	}

}
