package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.vo.MemberVO;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public int idcheck(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from amusemember where id=?";
		int result = 0;
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return result;
	}
	
	public String idcheck2(String tel,String email,String name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from amusemember where tel=? and email=? and name=?";
		String id = "";
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tel);
			pstmt.setString(2, email);
			pstmt.setString(3, name);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
				
			}else {
				id = "";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return id;
	}
	
	
	public String idcheck3(String birth, String name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from amusemember where birth=? and name=?";
		String id = "";
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, birth);
			pstmt.setString(2, name);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
				
			}else {
				id = "";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return id;
	}
	
	public MemberVO pwcheck2(MemberVO mvo1) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from amusemember where id=? and birth=?";
		MemberVO mvo = null;
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo1.getId());
			pstmt.setString(2, mvo1.getBirth());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				mvo.setBno(rs.getInt("bno"));
				mvo.setEmail(rs.getString("email"));
				mvo.setName(rs.getString("name"));
				mvo.setTel(rs.getString("tel"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return mvo;
	}
	
	
	
	
	
	public int memberInsert(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into amusemember(bno,name,id,pw,birth,tel,email,address) values(amusemember_seq.nextval,?,?,?,?,?,?,?)";
		conn = DBmanager.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getName());
			pstmt.setString(2, mvo.getId());
			pstmt.setString(3, mvo.getPw());
			pstmt.setString(4, mvo.getBirth());
			pstmt.setString(5, mvo.getTel());
			pstmt.setString(6, mvo.getEmail());
			pstmt.setString(7, mvo.getAddress());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	
	
	public int memberLoginSearch(String id,String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pw from amusemember where id=?";
		conn = DBmanager.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pw")!=null && rs.getString("pw").equals(pw)) {
					result = 1;
				}else {
					result = 0;
				}
			}else {
				result = -1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return result;
	}
	
	
	public MemberVO memUpdate(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from amusemember where id=?";
		MemberVO mvo= null;
		conn=DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mvo = new MemberVO();
				mvo.setBno(rs.getInt("bno"));
				mvo.setName(rs.getString("name"));
				mvo.setId(rs.getString("id"));
				mvo.setPw(rs.getString("pw"));
				mvo.setBirth(rs.getString("birth"));
				mvo.setTel(rs.getString("tel"));
				mvo.setEmail(rs.getString("email"));
				mvo.setAddress(rs.getString("address"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return mvo;
	}
	
	
	
	public int memUpdateOk(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update amusemember set pw=?,email=?,tel=?,address=? where id=?";
		conn = DBmanager.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getPw());
			pstmt.setString(2, mvo.getEmail());
			pstmt.setString(3, mvo.getTel());
			pstmt.setString(4, mvo.getAddress());
			pstmt.setString(5, mvo.getId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
		
	}
	
	public int userIdCheck(String id){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id from amusemember where id=?";
		int result = 0;
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return result;
	}
	
	
	public int mempwUpdateOk(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update amusemember set pw=? where id=?";
		conn = DBmanager.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mvo.getPw());
			pstmt.setString(2, mvo.getId());
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
