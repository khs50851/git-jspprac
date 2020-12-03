package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.vo.ProductVO;
import com.amusement2MVC.vo.basketVO;

public class basketDAO {
	private static basketDAO instance = new basketDAO();
	public static basketDAO getInstance() {
		return instance;
	}
	
	
	
	
	public void addbasket(int bno,int productbno,String productname,String producttype,int goods_Item_Price,int numbers) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into confirm2(basketid,bno,productbno,productname,producttype,price,validity,numbers) values(?,?,?,?,?,?,1,?)";
		String sql2 = "select count(basketid) from confirm2";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql2);
			rs = pstmt.executeQuery();
			int id = -1;
			if(rs.next()) {
				id = rs.getInt("count(basketid)");
				id++;
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, bno);
			pstmt.setInt(3, productbno);
			pstmt.setString(4, productname);
			pstmt.setString(5, producttype);
			pstmt.setInt(6, goods_Item_Price);
			pstmt.setInt(7, numbers);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	
	public List<basketVO> searchbasket(int bno){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from confirm2 where bno=? and validity=1";
		conn = DBmanager.getConnection();
		List<basketVO> blist = new ArrayList<basketVO>();
		basketVO bvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bvo = new basketVO();
				bvo.setBasketid(rs.getInt("basketid"));
				bvo.setBno(rs.getInt("bno"));
				bvo.setProductbno(rs.getInt("productbno"));
				bvo.setNumbers(rs.getInt("numbers"));
				bvo.setValidity(rs.getInt("validity"));
				blist.add(bvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return blist;
	}
	
	
	
	
	
	
	
}
