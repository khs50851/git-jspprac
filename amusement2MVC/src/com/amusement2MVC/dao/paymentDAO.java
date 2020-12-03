package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.vo.PaymentVO;
import com.amusement2MVC.vo.ResvcheckVO;

public class paymentDAO {
	private static paymentDAO instance = new paymentDAO();
	public static paymentDAO getInstance() {
		return instance;
	}
	
	
	public int addpayment(int bno,int productbno,int numbers,String cdate,String creditcardnumber,String creditcardpw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "insert into payment(paymentid,bno,productbno,numbers,cdate,creditcardnumber,creditcardpw) values(?,?,?,?,?,?,?)";
		String sql2 = "select count(paymentid) from payment";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql2);
			rs = pstmt.executeQuery();
			int id = -1;
			if(rs.next()) {
				id = rs.getInt("count(paymentid)");
				id=id+10;
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, bno);
			pstmt.setInt(3, productbno);
			pstmt.setInt(4, numbers);
			pstmt.setString(5, cdate);
			pstmt.setString(6, creditcardnumber);
			pstmt.setString(7, creditcardpw);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
	
	return result;
	
	}
	
	
	public int addpayment1(int bno,int productbno,int numbers,String cdate,String creditcardnumber,String creditcardpw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "insert into payment(paymentid,bno,productbno,numbers,cdate,creditcardnumber,creditcardpw) values(payment_seq.nextval,?,?,?,?,?,?)";
		conn = DBmanager.getConnection();
		try {
			
			pstmt.setInt(1, bno);
			pstmt.setInt(2, productbno);
			pstmt.setInt(3, numbers);
			pstmt.setString(4, cdate);
			pstmt.setString(5, creditcardnumber);
			pstmt.setString(6, creditcardpw);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
	
	return result;
	
	}
	
	
	public List<ResvcheckVO> paymentlist(int bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select paymentid,cdate,numbers,producttype,productname,price from payment pm,product pd,amusemember am where pm.productbno=pd.productbno and pm.bno=am.bno and am.bno=?";
		conn = DBmanager.getConnection();
		List<ResvcheckVO> rlist = new ArrayList<ResvcheckVO>();
		ResvcheckVO rvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				rvo = new ResvcheckVO();
				rvo.setPaymentid(rs.getInt("paymentid"));
				rvo.setCdate(rs.getString("cdate"));
				rvo.setNumbers(rs.getInt("numbers"));
				rvo.setProducttype(rs.getString("producttype"));
				rvo.setProductname(rs.getString("productname"));
				rvo.setPrice(rs.getInt("price"));
				rlist.add(rvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return rlist;
		
		
	}
	
	
	public int reservedelete(String bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql ="delete payment where bno=?";
		int result = 0;
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	} 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
