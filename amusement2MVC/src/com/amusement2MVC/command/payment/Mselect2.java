package com.amusement2MVC.command.payment;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.ProductDAO;
import com.amusement2MVC.vo.ProductVO;

public class Mselect2 implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ProductVO pvo1 = new ProductVO();
		ProductVO pvo2 = new ProductVO();
		ProductVO pvo3 = new ProductVO();
		ProductVO pvo4 = new ProductVO();
		ProductDAO pdao = ProductDAO.getInstance();
		
		
		List<ProductVO> plist = null;
		plist = pdao.productlist2();
		pvo1 = pdao.productpvo5();
		pvo2 = pdao.productpvo6();
		pvo3 = pdao.productpvo7();
		pvo4 = pdao.productpvo8();
		
		
String cdate = request.getParameter("cdate");
		
		request.setAttribute("pvo1", pvo1);
		request.setAttribute("pvo2", pvo2);
		request.setAttribute("pvo3", pvo3);
		request.setAttribute("pvo4", pvo4);
		request.setAttribute("plist", plist);
		request.setAttribute("cdate", cdate);
		
		
		
	}

}
