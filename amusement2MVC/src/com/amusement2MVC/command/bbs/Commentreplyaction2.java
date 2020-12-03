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
 * Servlet implementation class Commentreplyaction2
 */
@WebServlet("/commentreplyaction2.do")
public class Commentreplyaction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Commentreplyaction2() {
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

		
		int comment_number = Integer.parseInt(request.getParameter("comment_num"));
		int article_number = Integer.parseInt(request.getParameter("article_number"));
		String userid = request.getParameter("userid");
		String comment_content = request.getParameter("comment_content");
		bbsDAO bdao = bbsDAO.getInstance();
		
		commentVO cvo = new commentVO();
		cvo.setCommentnumber(bdao.getSeq());
		cvo.setArticle_number(article_number);
		cvo.setId(userid);
		cvo.setCommentcontent(comment_content);
		cvo.setComment_parent(comment_number);
		int result = bdao.insertcomment3(cvo);
		JSONObject obj = new JSONObject();
		obj.put("result13", result);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
		
		
		
		
		
		
		
	}

}
