package com.jass.preate.vo;

import java.util.Date;

public class Portfolio {
	private String code;
	private String title;
	private Date regDate;
	private String writer;
	private String state;
	private Date projectEndDate;
	private boolean publicCheck;
	private int likeHit;
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getProjectEndDate() {
		return projectEndDate;
	}
	public void setProjectEndDate(Date projectEndDate) {
		this.projectEndDate = projectEndDate;
	}
	public boolean isPublicCheck() {
		return publicCheck;
	}
	public void setPublicCheck(boolean publicCheck) {
		this.publicCheck = publicCheck;
	}
	public int getLikeHit() {
		return likeHit;
	}
	public void setLikeHit(int likeHit) {
		this.likeHit = likeHit;
	}
	
}
