package com.amusement2MVC.command.payment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class Sum
 */
@WebServlet("/sum.do")
public class Sum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sum() {
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
		int tot1=0;
		int tot2=0;
		int tot3=0;
		int tot4=0;
		

		request.setCharacterEncoding("utf-8");
		if(request.getParameter("tot1")!=null) {
			tot1 = Integer.parseInt(request.getParameter("tot1"));
		}
		if(request.getParameter("tot1")!=null) {
			tot2 = Integer.parseInt(request.getParameter("tot1"));
		}
		if(request.getParameter("tot1")!=null) {
			tot3 = Integer.parseInt(request.getParameter("tot1"));
		}
		if(request.getParameter("tot1")!=null) {
			tot4 = Integer.parseInt(request.getParameter("tot1"));
		}
		
		int rtot2 = tot1+tot2+tot3+tot4;
		
	
		
		
		JSONObject obj = new JSONObject();
		obj.put("rtot2", rtot2);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
	}

}
