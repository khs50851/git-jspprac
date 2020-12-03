package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.vo.ProductVO;

public class ProductDAO {
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	
	
	
	public List<ProductVO> productlist(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where rownum<=4";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				plist.add(pvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return plist;
		
	}
	
	
	
	public List<ProductVO> productlist2(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select productbno,producttype,productname,price from (select rownum rn,productbno,producttype,productname,price from product where rownum<=8) where rn>4";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				plist.add(pvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return plist;
		
	}
	
	
	
	
	
	public ProductVO productpvo1(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=1";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	public ProductVO productpvo2(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=2";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	
	public ProductVO productpvo3(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=3";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	
	public ProductVO productpvo4(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=4";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	public ProductVO productpvo5(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=5";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	
	public ProductVO productpvo6(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=6";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	
	public ProductVO productpvo7(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=7";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
	
	public ProductVO productpvo8(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where productbno=8";
		conn = DBmanager.getConnection();
		List<ProductVO> plist = new ArrayList<ProductVO>();
		ProductVO pvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pvo = new ProductVO();
				pvo.setProductbno(rs.getInt("productbno"));
				pvo.setProducttype(rs.getString("producttype"));
				pvo.setProductname(rs.getString("productname"));
				pvo.setPrice(rs.getInt("price"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return pvo;
		
	}
	
	
	
}
