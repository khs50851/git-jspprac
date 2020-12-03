package com.amusement2MVC.command.bbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.bbsDAO;

/**
 * Servlet implementation class CommentDeleteAction
 */
@WebServlet("/commentdeleteaction.do")
public class CommentDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentDeleteAction() {
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
		int comment_number = Integer.parseInt(request.getParameter("commentnumber"));
		bbsDAO bdao = bbsDAO.getInstance();
		int result16 = bdao.deleteComment(comment_number);
		JSONObject obj = new JSONObject();
		obj.put("result16", result16);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
		
		
		
		
		
		
		
		
		
	}

}
