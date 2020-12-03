package com.amusement2MVC.command.bbs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.commentVO;

/**
 * Servlet implementation class CommentRead
 */
@WebServlet("/commentread.do")
public class CommentRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentRead() {
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
		
		int commPageNum = Integer.parseInt(request.getParameter("commPageNum"));
		int articleNumber = Integer.parseInt(request.getParameter("articleNumber"));
		commentVO cvo = new commentVO();
		List<commentVO> clist = new ArrayList<commentVO>();
		bbsDAO bdao = bbsDAO.getInstance();
		
		clist = bdao.selectcomment(articleNumber, commPageNum);
		
		request.setAttribute("clist2", clist);
		
		JSONObject obj2 = new JSONObject();
		obj2.put("clist1", clist);
		
		response.setContentType("application/x-json,charset=utf-8");
	    response.getWriter().print(obj2);
		
		
		
		
		
		
	}

}
