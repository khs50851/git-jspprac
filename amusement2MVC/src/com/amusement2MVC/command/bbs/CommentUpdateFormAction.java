package com.amusement2MVC.command.bbs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.dao.bbsDAO;
import com.amusement2MVC.vo.commentVO;

/**
 * Servlet implementation class CommentUpdateFormAction
 */
@WebServlet("/commentupdateformaction.do")
public class CommentUpdateFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentUpdateFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int comment_num = Integer.parseInt(request.getParameter("num"));
		
		bbsDAO bdao = bbsDAO.getInstance();
		commentVO cvo = bdao.getComment(comment_num);
		request.setAttribute("cvo3", cvo);
		RequestDispatcher disp = request.getRequestDispatcher("bbs/commentupdateform.jsp");
		disp.forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
