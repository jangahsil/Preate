package com.jass.preate.vo;

import java.util.Date;

public class CustomerService {
	private String code;
	private String title;
	private String writer;
	private Date regDate;
	private String content;
	private Date respondDate;
	
	
	
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRespondDate() {
		return respondDate;
	}
	public void setRespondDate(Date respondDate) {
		this.respondDate = respondDate;
	}

}
