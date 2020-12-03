package com.amusement2MVC.command.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.MemberDAO;



/**
 * Servlet implementation class CheckId
 */
@WebServlet("/checkUserID.do")
public class CheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckId() {
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

		String id = request.getParameter("id");
		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.userIdCheck(id);
		JSONObject obj = new JSONObject();
		obj.put("result", result);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
	}

}
