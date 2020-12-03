package com.amusement2MVC.command.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class Certicompare
 */
@WebServlet("/certicompare.do")
public class Certicompare extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Certicompare() {
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


		 String certi = (String)request.getSession().getAttribute("AuthenticationKey");
	        String auth = request.getParameter("certinumber");
	        response.setCharacterEncoding("utf-8");
	        request.setCharacterEncoding("utf-8");
	        JSONObject obj = new JSONObject();
	        if(auth.equals(certi)) {
	        	
	        obj.put("msg1", "인증번호 일치");
	        	obj.put("check", "ok");
	        }else {
	        	
	        	obj.put("check", "nok");
	        	obj.put("msg2", "인증번호 불일치");
	        }
	        response.setContentType("application/x-json,charset=utf-8");
	     	response.getWriter().print(obj);
		
		
		
	}

}
