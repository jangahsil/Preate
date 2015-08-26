package com.jass.preate.vo;

import java.util.Date;

public class Portfolio {
	private String code;
	private String title;
	private Date regDate;
	private String writer;
	/*뷰에 추가된 컬럼*/
	private String writerNick; 
	private String writerName;
	private float writerCareer;
	private String writerImage;
	private String writerIntro;
	/*-----------*/
	private String state;
	private Date projectEndDate;
	private boolean publicCheck;
	private int likeHit;
	private String portImage;
	/*뷰에 추가된 이미지컬럼*/
	
	//private String fileName; 주석처리
	/*---------------*/
	
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
	public String getWriterNick() {
		return writerNick;
	}
	public void setWriterNick(String writerNick) {
		this.writerNick = writerNick;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public float getWriterCareer() {
		return writerCareer;
	}
	public void setWriterCareer(float writerCareer) {
		this.writerCareer = writerCareer;
	}
	public String getWriterImage() {
		return writerImage;
	}
	public void setWriterImage(String writerImage) {
		this.writerImage = writerImage;
	}
	public String getWriterIntro() {
		return writerIntro;
	}
	public void setWriterIntro(String writerIntro) {
		this.writerIntro = writerIntro;
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
	public String getPortImage() {
		return portImage;
	}
	public void setPortImage(String portImage) {
		this.portImage = portImage;
	}
	
	
	
	/*public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}*/
	
	
	
}
