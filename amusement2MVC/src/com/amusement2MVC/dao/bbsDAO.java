package com.amusement2MVC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.amusement2MVC.command.bbs.Bbs;
import com.amusement2MVC.dbmanager.DBmanager;
import com.amusement2MVC.util.Criteria;
import com.amusement2MVC.vo.ClistVO;
import com.amusement2MVC.vo.NoticeVO;
import com.amusement2MVC.vo.bbsVO;
import com.amusement2MVC.vo.commentVO;

public class bbsDAO {
	private static bbsDAO instance = new bbsDAO();
	public static bbsDAO getInstance() {
		return instance;
	}
	
	
	
	public int insertArticle(bbsVO bvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into bbs values(bbs_seq.nextval,?,?,?,bbs_seq.currval,0,0,0,sysdate,?)";
		int result = 0;
		
		try {
			conn = DBmanager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bvo.getId());
			pstmt.setString(2, bvo.getTitle());
			pstmt.setString(3, bvo.getContent());
			pstmt.setString(4, bvo.getFile_name());
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	
	public bbsVO selectarticle(String article_number) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from bbs where article_number=?";
		
		bbsVO bvo = null;
		conn = DBmanager.getConnection();
		
	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bvo = new bbsVO();
				bvo.setArticle_number(rs.getInt("article_number"));
				bvo.setId(rs.getString("id"));
				bvo.setTitle(rs.getString("title"));
				bvo.setDepth(rs.getInt("depth"));
				bvo.setContent(rs.getString("content"));
				bvo.setHit(rs.getInt("hit"));
				bvo.setGroup_id(rs.getInt("group_id"));
				bvo.setPos(rs.getInt("pos"));
				bvo.setWrite_date(rs.getTimestamp("write_date"));
				bvo.setFile_name(rs.getString("file_name"));
				
				
				
				
			}
			
		
		return bvo;
		
	}
	
	
	
	
	
	public int updateComment(commentVO cvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = "update comments set comment_content=? where comment_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getCommentcontent());
			pstmt.setInt(2, cvo.getCommentnumber());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		
		return result;
		
	}
	
	
	
	
	
	
	public long countcomment2(String article_number){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		commentVO cvo = null;
		bbsVO bvo = null;
		long count = 0;
		List<commentVO> clist = new ArrayList<commentVO>();
		String sql= "select count(*) from comments where article_number=?";
		conn = DBmanager.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
//				count = bvo.setCommentcount(rs.getLong(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return count;
	}
	
	public List<commentVO> selectcomment(int article_number, int amount){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		commentVO cvo = null;
		List<commentVO> clist = new ArrayList<commentVO>();
		String sql = "select * from (select id,comment_content,comment_date,article_number from comments where article_number=? order by comment_number desc) comments where rownum between 1 and ?";
		conn = DBmanager.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article_number);
			pstmt.setInt(2, amount);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cvo = new commentVO();
				cvo.setId(rs.getString("id"));
				cvo.setCommentcontent(rs.getString("comment_content"));
				cvo.setCommentdate(rs.getString("comment_date"));
				cvo.setArticle_number(rs.getInt("article_number"));
				clist.add(cvo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return clist;
	}
	
	public HashMap<String, Object> insertcomment(commentVO cvo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		HashMap<String, Object> hm =null;
		int result = 0;
		List<commentVO> clist = null;
		String sql = "insert into comments values(comment_seq.nextval,?,?,sysdate,?,?)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cvo.getId());
			pstmt.setString(2, cvo.getCommentcontent());
			pstmt.setInt(3, cvo.getArticle_number());
			pstmt.setInt(4, cvo.getComment_parent());
			result = pstmt.executeUpdate();
			clist = selectcomment(cvo.getArticle_number(), 10);
			hm = new HashMap<>();
			hm.put("result15", result);
			hm.put("comments", clist);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return hm;
		
	}
	
	
	
	public int insertcomment3(commentVO cvo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		HashMap<String, Object> hm =null;
		int result = 0;
		List<commentVO> clist = null;
		String sql = "insert into comments values(?,?,?,sysdate,?,?)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cvo.getCommentnumber());
			pstmt.setString(2, cvo.getId());
			pstmt.setString(3, cvo.getCommentcontent());
			pstmt.setInt(4, cvo.getArticle_number());
			pstmt.setInt(5, cvo.getComment_parent());
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	
	
	
	
	
	
	
	public int insertcomment2(String id,String commentcontent,int article_number){
		Connection conn = null;
		PreparedStatement pstmt = null;
		HashMap<String, Object> hm =null;
		int result = 0;
		List<commentVO> clist = null;
		String sql = "insert into comments values(comment_seq.nextval,?,?,sysdate,?)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, commentcontent);
			pstmt.setInt(3, article_number);
			result = pstmt.executeUpdate();
			clist = selectcomment(article_number, 10);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	
	
	
	public List<commentVO> getCommentList(int article_number){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<commentVO> list = new ArrayList<commentVO>();
		String sql = "select level,comment_number,article_number,id,comment_date,comment_parent,comment_content from comments where article_number=? start with comment_parent=0 connect by prior comment_number=comment_parent";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article_number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				commentVO cvo = new commentVO();
				cvo.setComment_level(rs.getInt("level"));
				cvo.setCommentnumber(rs.getInt("comment_number"));
				cvo.setArticle_number(rs.getInt("article_number"));
				cvo.setId(rs.getString("id"));
				cvo.setCommentdate(rs.getString("comment_date"));
				cvo.setComment_parent(rs.getInt("comment_parent"));
				cvo.setCommentcontent(rs.getString("comment_content"));
				list.add(cvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return list;
		
	}
	
	
	public commentVO getComment(int comment_number) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		commentVO cvo = null;
		String sql = "select * from comments where comment_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comment_number);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cvo = new commentVO();
				cvo.setCommentnumber(rs.getInt("comment_number"));
				cvo.setArticle_number(rs.getInt("article_number"));
				cvo.setId(rs.getString("id"));
				cvo.setCommentdate(rs.getString("comment_date"));
				cvo.setComment_parent(rs.getInt("comment_parent"));
				cvo.setCommentcontent(rs.getString("comment_content"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return cvo;

	}
	
	
	public int getSeq() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "select comment_seq.nextval from dual";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return result;
		
		
		
	}
	
	
	public int deleteComment(int comment_number) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = "delete from comments where comment_number in (select comment_number from comments start with comment_number=? connect by prior comment_number = comment_parent)";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comment_number);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
	}
	
	public int countcomment(int article_number) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		
		String sql = "select count(*) from comments where article_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return count;
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public List<bbsVO> bbsList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from bbs order by bno desc";
		conn = DBmanager.getConnection();
		List<bbsVO> blist = new ArrayList<bbsVO>();
		bbsVO bvo = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			while(rs.next()) {
				bvo = new bbsVO();
				bvo.setArticle_number(rs.getInt("article_number"));
				bvo.setId(rs.getString("id"));
				bvo.setTitle(rs.getString("title"));
				bvo.setContent(rs.getString("content"));
				bvo.setGroup_id(rs.getInt("group_id"));
				bvo.setDepth(rs.getInt("depth"));
				bvo.setPos(rs.getInt("pos"));
				bvo.setHit(rs.getInt("hit"));
				bvo.setWrite_date(rs.getTimestamp("write_date"));
				bvo.setFile_name(rs.getString("file_name"));
				
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
	

	
	
	
	
	public List<bbsVO> getbbsWithPaging(Criteria cri,String query){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<bbsVO> blist = new ArrayList<bbsVO>();
		String sql = "";
		
		if(query!="") {
		sql = "select (select count(*) as cnt from comments cm where cm.article_number = rr.article_number) as cnt,article_number,id,title,content,group_id,depth,pos,hit,write_date,file_name from (select /*+ index_desc(bbs pk_bbs)*/ rownum rn,article_number,id,title,content,group_id,depth,pos,hit,write_date,file_name from bbs where ("+query+") and rownum<=?*?) rr where rn>(?-1)*?";
		}else {
			sql = "select (select count(*) as cnt from comments cm where cm.article_number = rr.article_number) as cnt,article_number,id,title,content,group_id,depth,pos,hit,write_date,file_name from (select /*+ index_desc(bbs pk_bbs)*/ rownum rn,article_number,id,title,content,group_id,depth,pos,hit,write_date,file_name from bbs where rownum<=?*?) rr where rn>(?-1)*?";
		}
		
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cri.getPageNum());
			pstmt.setInt(2, cri.getAmount());
			pstmt.setInt(3, cri.getPageNum());
			pstmt.setInt(4, cri.getAmount());
			rs = pstmt.executeQuery();
			bbsVO bvo = null;
			
			while(rs.next()) {
				bvo = new bbsVO();
				bvo.setArticle_number(rs.getInt("article_number"));
				bvo.setTitle(rs.getString("title"));
				bvo.setContent(rs.getString("content"));
				bvo.setId(rs.getString("id"));
				bvo.setWrite_date(rs.getTimestamp("write_date"));
				bvo.setHit(rs.getInt("hit"));
				bvo.setGroup_id(rs.getInt("group_id"));
				bvo.setCcount(rs.getInt("cnt"));
				blist.add(bvo);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return blist;
		
	}
	
	
	
	public int bbsCount(String query) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totcount= 0;
		String sql = "";
		if(query!="") {
		sql = "select count(*) from bbs where "+ query;
		}else {
		sql = "select count(*) from bbs";
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
	
	public void bbsReadCount(int article_number) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update bbs set hit=hit+1 where article_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article_number);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		
	}
	
	public bbsVO bbsView(int article_number) {
		bbsReadCount(article_number);
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		bbsVO bvo = new bbsVO();
		String sql = "select * from bbs where article_number=?";
		String sql2= "select count(*) from comments where article_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bvo.setArticle_number(rs.getInt("article_number"));
				bvo.setTitle(rs.getString("title"));
				bvo.setContent(rs.getString("content"));
				bvo.setId(rs.getString("id"));
				bvo.setFile_name(rs.getString("file_name"));
				bvo.setWrite_date(rs.getTimestamp("write_date"));
				bvo.setHit(rs.getInt("hit"));
		
			}
			
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bvo.setCommentcount(rs.getLong(1));
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return bvo;
	}
	
	public int bbsDelete(String article_number) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete bbs where article_number=?";
		conn = DBmanager.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article_number);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}

	
	public bbsVO bbsemodify(String article_number) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		bbsVO bvo = new bbsVO();
		String sql = "select * from bbs where article_number=?";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article_number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bvo.setArticle_number(rs.getInt("article_number"));
				bvo.setTitle(rs.getString("title"));
				bvo.setContent(rs.getString("content"));
				bvo.setId(rs.getString("id"));
				bvo.setWrite_date(rs.getTimestamp("write_date"));
				bvo.setHit(rs.getInt("hit"));
				bvo.setFile_name(rs.getString("file_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		return bvo;
	}
	
	
	public int bbseUpdate(bbsVO bvo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update bbs set title=?,id=?,content=? where article_number=?";
		conn = DBmanager.getConnection();
		int result=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bvo.getTitle());
			pstmt.setString(2, bvo.getId());
			pstmt.setString(3, bvo.getContent());
			pstmt.setInt(4, bvo.getArticle_number());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(pstmt, conn);
		}
		return result;
		
	}
	

	public List<ClistVO> Clist(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ClistVO cvo = null;
		List<ClistVO> colist = new ArrayList<ClistVO>();
		String sql = "select am.id,am.name,pm.cdate,pd.producttype,pd.productname,pm.numbers,pd.price from amusemember am, product pd, payment pm where am.bno=pm.bno and pm.productbno = pd.productbno order by pm.cdate,am.name";
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
			cvo = new ClistVO();
			cvo.setId(rs.getString("id"));
			cvo.setName(rs.getString("name"));
			cvo.setCdate(rs.getString("cdate"));
			cvo.setProducttype(rs.getString("producttype"));
			cvo.setProductname(rs.getString("productname"));
			cvo.setNumbers(rs.getInt("numbers"));
			cvo.setPrice(rs.getInt("price"));
			colist.add(cvo);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return colist;
	}
	
	public List<ClistVO> Clist2(Criteria cri,String query){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ClistVO cvo = null;
		List<ClistVO> colist = new ArrayList<ClistVO>();
		String sql = "";
		if(query!="") {
			sql = "select bno,name,id,birth,tel,email,address from (select /*+ index_desc(amusememeber amusemember_pk)*/ rownum rn,bno,name,id,birth,tel,email,address from amusemember where ("+query+") and rownum<=?*?) where rn>(?-1)*?";
		}else {
		sql = "select bno,name,id,birth,tel,email,address from (select /*+ index_desc(amusememeber amusemember_pk)*/ rownum rn,bno,name,id,birth,tel,email,address from amusemember where rownum<=?*?) where rn>(?-1)*?";
		}
		
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cri.getPageNum());
			pstmt.setInt(2, cri.getAmount());
			pstmt.setInt(3, cri.getPageNum());
			pstmt.setInt(4, cri.getAmount());
			rs = pstmt.executeQuery();
			while(rs.next()) {
			cvo = new ClistVO();
			cvo.setBno(rs.getInt("bno"));
			cvo.setName(rs.getString("name"));
			cvo.setId(rs.getString("id"));
			cvo.setBirth(rs.getString("birth"));
			cvo.setTel(rs.getString("tel"));
			cvo.setEmail(rs.getString("email"));
			cvo.setAddress(rs.getString("address"));
			colist.add(cvo);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return colist;
	}
	
	public int cuscount(String query) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int result = 0;
		if(query != "") {
			sql = "select count(*) from amusemember where "+ query;
		}else {
			sql = "select count(*) from amusemember";
		}
		conn = DBmanager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			result = rs.getInt(1);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBmanager.close(rs, pstmt, conn);
		}
		
		return result;
	}
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
