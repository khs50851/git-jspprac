package com.amusement2MVC.command.bbs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.commentVO;

/**
 * Servlet implementation class CommentWrite
 */
@WebServlet("/commentwrite.do")
public class CommentWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentWrite() {
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
		
		HttpSession session = request.getSession();
		bbsDAO bdao = bbsDAO.getInstance();
		String id = (String)session.getAttribute("userid");
		String commentContent = request.getParameter("commentContent");
		int articleNumber = Integer.parseInt(request.getParameter("articleNumber"));
		List<commentVO> clist = new ArrayList<commentVO>();
		commentVO cvo = new commentVO();
		cvo.setId(id);
		cvo.setCommentcontent(commentContent);
		cvo.setArticle_number(articleNumber);
		
		
		HashMap<String, Object> hm = null;
		hm = bdao.insertcomment(cvo);
		JSONObject obj = new JSONObject(hm);
//		int result = bdao.insertcomment2(id, commentContent, articleNumber);
//		clist = bdao.selectcomment(articleNumber, 10);
		
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("application/x-json,charset=utf-8");
	    response.getWriter().print(obj);
		
		
	}

}
