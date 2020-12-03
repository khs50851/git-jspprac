package com.amusement2MVC.command.payment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class Calculator
 */
@WebServlet("/calculator.do")
public class Calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calculator() {
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
		int price=0;
		int count=0;
		int price2=0;
		int count2=0;
		int price3=0;
		int count3=0;
		int price4=0;
		int count4=0;
		int tot1 = 0;
		int tot2 = 0;
		int tot3 = 0;
		int tot4 = 0;
		
		
		if(request.getParameter("price")!=null && request.getParameter("count") !=null) {
			 price = Integer.parseInt(request.getParameter("price"));
			 count = Integer.parseInt(request.getParameter("count"));
		}
		if(request.getParameter("price2")!=null && request.getParameter("count2") !=null) {
			 price2 = Integer.parseInt(request.getParameter("price2"));
			 count2 = Integer.parseInt(request.getParameter("count2"));
		}
		if(request.getParameter("price3")!=null && request.getParameter("count3") !=null) {
			 price3 = Integer.parseInt(request.getParameter("price3"));
			 count3 = Integer.parseInt(request.getParameter("count3"));
		}
		if(request.getParameter("price4")!=null && request.getParameter("count4") !=null) {
			 price4 = Integer.parseInt(request.getParameter("price4"));
			 count4 = Integer.parseInt(request.getParameter("count4"));
		}
		
		tot1 = price*count;
		tot2 = price2*count2;
		tot3 = price3*count3;
		tot4 = price4*count4;
		
		int rtot = tot1+tot2+tot3+tot4;
		JSONObject obj = new JSONObject();
		obj.put("rtot", rtot);
		obj.put("tot1", tot1);
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/x-json,charset=utf-8");
		response.getWriter().print(obj);
		
		
		
		
	}

}
