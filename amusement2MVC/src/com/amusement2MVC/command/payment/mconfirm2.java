package com.amusement2MVC.command.payment;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amusement2MVC.command1.Command;
import com.amusement2MVC.dao.MemberDAO;
import com.amusement2MVC.dao.basketDAO;
import com.amusement2MVC.vo.MemberVO;
import com.amusement2MVC.vo.basketVO;
import com.amusement2MVC.vo.confirmVO;

public class mconfirm2 implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String cdate = request.getParameter("cdate");
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("userid");
		
		MemberVO mvo = new MemberVO();
		MemberDAO mdao = MemberDAO.getInstance();
		mvo = mdao.memUpdate(id);
		basketVO bvo = new basketVO();


		confirmVO cvo1 = new confirmVO();
		confirmVO cvo2 = new confirmVO();
		confirmVO cvo3 = new confirmVO();
		confirmVO cvo4 = new confirmVO();
		
		List<confirmVO> clist = new ArrayList<confirmVO>();
		basketDAO bdao = basketDAO.getInstance();
		
		
		int bno = mvo.getBno();
		
		int goods_cnt1 = 0;
		int goods_Item_Price1 = 0;
		int sumprice1 = 0;
		
		int goods_cnt2 = 0;
		int goods_Item_Price2 = 0;
		int sumprice2 = 0;
		
		int goods_cnt3 = 0;
		int goods_Item_Price3 = 0;
		int sumprice3 = 0;
		
		int goods_cnt4 = 0;
		int goods_Item_Price4 = 0;
		int sumprice4 = 0;
		
		
		if(Integer.parseInt(request.getParameter("goods_cnt1")) != 0) {
		String producttype1 = request.getParameter("producttype1");
		String productname1 = request.getParameter("productname1");
		int productbno1 = Integer.parseInt(request.getParameter("productbno1"));
		
//		String price1 = request.getParameter("price1");
		goods_cnt1 = Integer.parseInt(request.getParameter("goods_cnt1"));
		goods_Item_Price1 = Integer.parseInt(request.getParameter("goods_Item_Price1"));
		sumprice1 = goods_cnt1 * goods_Item_Price1;
		cvo1.setPrice(goods_Item_Price1);
		cvo1.setNumbers(goods_cnt1);
		cvo1.setProductname(productname1);
		cvo1.setProducttype(producttype1);
		cvo1.setProductbno(productbno1);
		clist.add(cvo1);
//		bdao.addbasket(bno, productbno1,productname1,producttype1,goods_Item_Price1, goods_cnt1);
		
		
		
		}
		
		if(Integer.parseInt(request.getParameter("goods_cnt2")) != 0) {
		String producttype2 = request.getParameter("producttype2");
		String productname2 = request.getParameter("productname2");
		int productbno2 = Integer.parseInt(request.getParameter("productbno2"));
//		String price2 = request.getParameter("price2");
		goods_cnt2 = Integer.parseInt(request.getParameter("goods_cnt2"));
		goods_Item_Price2 = Integer.parseInt(request.getParameter("goods_Item_Price2"));
		sumprice2 = goods_cnt2 * goods_Item_Price2;
//		bdao.addbasket(bno, productbno2,productname2,producttype2,goods_Item_Price2, goods_cnt2);
		
		cvo2.setPrice(goods_Item_Price2);
		cvo2.setNumbers(goods_cnt2);
		cvo2.setProductname(productname2);
		cvo2.setProducttype(producttype2);
		cvo2.setProductbno(productbno2);
		clist.add(cvo2);
		}
		
		
		if(Integer.parseInt(request.getParameter("goods_cnt3")) != 0) {
		String producttype3 = request.getParameter("producttype3");
		String productname3 = request.getParameter("productname3");
		int productbno3 = Integer.parseInt(request.getParameter("productbno3"));
//		String price3 = request.getParameter("price3");
		goods_cnt3 = Integer.parseInt(request.getParameter("goods_cnt3"));
		goods_Item_Price3 = Integer.parseInt(request.getParameter("goods_Item_Price3"));
		sumprice3 = goods_cnt3 * goods_Item_Price3;
//		bdao.addbasket(bno, productbno3,productname3,producttype3,goods_Item_Price3, goods_cnt3);
		cvo3.setPrice(goods_Item_Price3);
		cvo3.setNumbers(goods_cnt3);
		cvo3.setProductname(productname3);
		cvo3.setProducttype(producttype3);
		cvo3.setProductbno(productbno3);
		clist.add(cvo3);
		
		}
		
		if(Integer.parseInt(request.getParameter("goods_cnt4")) != 0) {
		String producttype4 = request.getParameter("producttype4");
		String productname4 = request.getParameter("productname4");
		int productbno4 = Integer.parseInt(request.getParameter("productbno4"));
//		String price4 = request.getParameter("price4");
		goods_cnt4 = Integer.parseInt(request.getParameter("goods_cnt4"));
		goods_Item_Price4 = Integer.parseInt(request.getParameter("goods_Item_Price4"));
		sumprice4 = goods_cnt4 * goods_Item_Price4;
//		bdao.addbasket(bno, productbno4,productname4,producttype4,goods_Item_Price4, goods_cnt4);
		cvo4.setPrice(goods_Item_Price4);
		cvo4.setNumbers(goods_cnt4);
		cvo4.setProductname(productname4);
		cvo4.setProducttype(producttype4);
		cvo4.setProductbno(productbno4);
		clist.add(cvo4);
		
		}
		
		
		
		
//		blist = bdao.searchbasket(bno);
		
		request.setAttribute("cdate", cdate);
		request.setAttribute("clist", clist);
		request.setAttribute("cvo1", cvo1);
		request.setAttribute("cvo2", cvo2);
		request.setAttribute("cvo3", cvo3);
		request.setAttribute("cvo4", cvo4);
		
		
		
		
		
		

	}

}
