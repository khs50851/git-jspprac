package com.amusement2MVC.command.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.paymentDAO;

public class Reservedelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.getParameter("utf-8");
		String bno = request.getParameter("bno");
		paymentDAO pdao =  paymentDAO.getInstance();
		int result = pdao.reservedelete(bno);
		
		request.setAttribute("resresult", result);
	}

}
