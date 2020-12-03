package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.vo.VO;

public class TestSample {

	public static void main(String[] args) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from teststudy";
		String test2 = "no";
		int test1=0;
		VO vo = null;
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo = new VO();
				vo.setTest1(rs.getInt("test1"));
				vo.setTest2(rs.getString("test2"));
				
				test1=vo.getTest1();
				test2=vo.getTest2();
				System.out.println(test1);
				System.out.println(test2);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
