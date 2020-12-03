package com.amusement2MVC.vo;

import java.util.Date;

public class commentVO {
	private int commentnumber;
	private String id;
	private String commentcontent;
	private String commentdate;
	private int article_number;
	private int comment_parent;
	private int comment_level;
	private Date comment_date;
	
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	public int getComment_parent() {
		return comment_parent;
	}
	public void setComment_parent(int comment_parent) {
		this.comment_parent = comment_parent;
	}
	public int getComment_level() {
		return comment_level;
	}
	public void setComment_level(int comment_level) {
		this.comment_level = comment_level;
	}
	public int getCommentnumber() {
		return commentnumber;
	}
	public void setCommentnumber(int commentnumber) {
		this.commentnumber = commentnumber;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
	public String getCommentdate() {
		return commentdate;
	}
	public void setCommentdate(String commentdate) {
		this.commentdate = commentdate;
	}
	public int getArticle_number() {
		return article_number;
	}
	public void setArticle_number(int article_number) {
		this.article_number = article_number;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
