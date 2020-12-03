package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.NoticeVO;

public class NoticeDAO {
	private static NoticeDAO instance = new NoticeDAO();
	public static NoticeDAO getInstance() {
		return instance;
	}
	
	public void noticeInsert(NoticeVO nvo) {
		Connection conn =null;
		PreparedStatement pstmt = null;
		String sql = "insert into amusenotice(bno,title,content,writer,regdate,readcount) values(amusenotice_seq.nextval,?,?,?,sysdate,0)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nvo.getTitle());
			pstmt.setString(2, nvo.getContent());
			pstmt.setString(3, nvo.getWriter());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		
	}
	
	
	public List<NoticeVO> noticeList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from amusenotice order by bno desc";
		conn = DBmanager.getConnection();
		List<NoticeVO> nlist = new ArrayList<NoticeVO>();
		NoticeVO nvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			while(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
				nlist.add(nvo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
				return nlist;
	}
	
	public List<NoticeVO> MainnoticeList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from amusenotice where rownum<=2 order by bno desc";
		conn = DBmanager.getConnection();
		List<NoticeVO> nlist = new ArrayList<NoticeVO>();
		NoticeVO nvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			while(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
				nlist.add(nvo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
				return nlist;
	}
	
	
	public NoticeVO MainnoticeVO1() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from amusenotice where rownum=1 order by bno desc";
		conn = DBmanager.getConnection();
		NoticeVO nvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			if(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setContent(rs.getString("content"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
				return nvo;
	}
	
	
	public NoticeVO MainnoticeVO2() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select bno,title,writer,regdate,readcount,content from (select bno,title,content,writer,regdate,readcount,rownum rn from amusenotice where rownum<=2 order by bno desc) where rn=2";
		conn = DBmanager.getConnection();
		NoticeVO nvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			if(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setContent(rs.getString("content"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
				return nvo;
	}
	
	
	
	public NoticeVO noticeView(String bno) {
		noticeReadCount(bno);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		NoticeVO nvo = new NoticeVO();
		String sql = "select * from amusenotice where bno=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setContent(rs.getString("content"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return nvo;
	}
	
	public void noticeReadCount(String bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update amusenotice set readcount=readcount+1 where bno=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		
	}
	
	
	public int noticeUpdate(NoticeVO nvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update amusenotice set title=?,writer=?,content=? where bno=?";
		conn = DBmanager.getConnection();
		int result=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nvo.getTitle());
			pstmt.setString(2, nvo.getWriter());
			pstmt.setString(3, nvo.getContent());
			pstmt.setInt(4, nvo.getBno());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	
	public int NoticeDelete(String bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete amusenotice where bno=?";
		conn = DBmanager.getConnection();
		int result = 0;
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
	
	
	public NoticeVO preByCode(String bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=  null;
		NoticeVO prevo = null;
		int result = 0;
		String sql = "select bno,title from amusenotice where bno=(select max(bno) from amusenotice where bno<?)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				prevo = new NoticeVO();
				prevo.setBno(rs.getInt("bno"));
				prevo.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return prevo;
	}
	
	
	public NoticeVO nextByCode(String bno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=  null;
		NoticeVO nextvo = null;
		int result = 0;
		String sql = "select bno,title from amusenotice where bno=(select min(bno) from amusenotice where bno>?)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				nextvo = new NoticeVO();
				nextvo.setBno(rs.getInt("bno"));
				nextvo.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return nextvo;
	}
	
	
	public int noticeCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totcount= 0;
		String sql = "select count(*) from amusenotice";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totcount=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return totcount;
	}
	
	public int noticeCount(String query) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totcount= 0;
		String sql = "";
		if(query!="") {
		sql = "select count(*) from amusenotice where "+ query;
		}else {
		sql = "select count(*) from amusenotice";
		}
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totcount=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return totcount;
	}
	
	
	public List<NoticeVO> noticeList(String query) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		if(query!="") {
		sql = "select * from amusenotice where "+query+" order by bno desc";
		}else {
			sql = "select * from amusenotice order by bno desc";
		}
		conn = DBmanager.getConnection();
		List<NoticeVO> nlist = new ArrayList<NoticeVO>();
		NoticeVO nvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			while(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
				nlist.add(nvo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
				return nlist;
	}
	
	
	public List<NoticeVO> getListWithPaging(Criteria cri){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		String sql = "select bno,title,content,writer,regdate,readcount from (select /*+ index_desc(notice pk_amusenotice)*/ rownum rn,bno,title,content,writer from amusenotice where rownum<=?*?) where rn>(?-1)*?";
		
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cri.getPageNum());
			pstmt.setInt(2, cri.getAmount());
			pstmt.setInt(3, cri.getPageNum());
			pstmt.setInt(4, cri.getAmount());
			rs = pstmt.executeQuery();
			NoticeVO nvo = null;
			
			while(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setContent(rs.getString("content"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
				list.add(nvo);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return list;
		
	}
	
	public List<NoticeVO> getListWithPaging(Criteria cri,String query){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		String sql = "";
		
		if(query!="") {
		sql = "select bno,title,content,writer,regdate,readcount from (select /*+ index_desc(amusenotice pk_amusenotice)*/ rownum rn,bno,title,content,writer,regdate,readcount from amusenotice where ("+query+") and rownum<=?*?) where rn>(?-1)*?";
		}else {
			sql = "select bno,title,content,writer,regdate,readcount from (select /*+ index_desc(amusenotice pk_amusenotice)*/ rownum rn,bno,title,content,writer,regdate,readcount from amusenotice where rownum<=?*?) where rn>(?-1)*?";
		}
		
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cri.getPageNum());
			pstmt.setInt(2, cri.getAmount());
			pstmt.setInt(3, cri.getPageNum());
			pstmt.setInt(4, cri.getAmount());
			rs = pstmt.executeQuery();
			NoticeVO nvo = null;
			
			while(rs.next()) {
				nvo = new NoticeVO();
				nvo.setBno(rs.getInt("bno"));
				nvo.setTitle(rs.getString("title"));
				nvo.setContent(rs.getString("content"));
				nvo.setWriter(rs.getString("writer"));
				nvo.setRegdate(rs.getDate("regdate"));
				nvo.setReadcount(rs.getInt("readcount"));
				list.add(nvo);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return list;
		
	}
	
	
	
	
	
	
	
	
	
	
}
