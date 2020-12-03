package com.amusement2MVC.vo;

import java.sql.Timestamp;

public class bbsVO {

	private int article_number;
	private String id;
	private String title;
	private String content;
	private int group_id;
	private int depth;
	private int pos;
	private int hit;
	private Timestamp write_date;
	private String file_name;
	private long commentcount;
	private int ccount;
	public int getCcount() {
		return ccount;
	}
	public void setCcount(int ccount) {
		this.ccount = ccount;
	}
	public long getCommentcount() {
		return commentcount;
	}
	public void setCommentcount(long commentcount) {
		this.commentcount = commentcount;
	}
	public int getArticle_number() {
		return article_number;
	}
	public void setArticle_number(int article_number) {
		this.article_number = article_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
}
