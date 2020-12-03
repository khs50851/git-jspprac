package com.amusement2MVC.command.main;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.NoticeDAO;
import com.amusement2MVC.vo.NoticeVO;

public class Main implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		NoticeDAO ndao = new NoticeDAO();
		NoticeVO nvo1 = ndao.MainnoticeVO1();
		NoticeVO nvo2 = ndao.MainnoticeVO2();
		String[] weekDay = { "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" };     

		   Calendar cal = Calendar.getInstance(); 

		      int num = cal.get(Calendar.DAY_OF_WEEK)-1; 

		      String today = weekDay[num]; 

		      String kakaonickname = request.getParameter("kakaonickname");
		      HttpSession session = request.getSession();
		      session.setAttribute("kakaoid", kakaonickname);
		      
		
		      request.setAttribute("today", today);
		request.setAttribute("nvo1", nvo1);
		request.setAttribute("nvo2", nvo2);
		
		
		
		

	}

}
