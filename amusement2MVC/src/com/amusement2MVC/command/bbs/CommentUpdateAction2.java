package com.amusement2MVC.command.bbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.commentVO;

/**
 * Servlet implementation class CommentUpdateAction2
 */
@WebServlet("/commentupdateaction2.do")
public class CommentUpdateAction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentUpdateAction2() {
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

		int comment_num = Integer.parseInt(request.getParameter("comment_num"));
		String comment_content= request.getParameter("comment_content");
		bbsDAO bdao = bbsDAO.getInstance();
		commentVO cvo = new commentVO();
		cvo.setCommentnumber(comment_num);
		cvo.setCommentcontent(comment_content);
		int result = bdao.updateComment(cvo);
		JSONObject obj = new JSONObject();
		obj.put("result14", result);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
		
		
	}

}
