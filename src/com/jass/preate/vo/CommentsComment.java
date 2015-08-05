package com.jass.preate.vo;

import java.util.Date;

public class CommentsComment {
	private String code;
	private String content;
	private String writer;
	private String writerNick;
	private String writerName;
	private Date regDate;
	private String commentCode;
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getCommentCode() {
		return commentCode;
	}
	public void setCommentCode(String commentCode) {
		this.commentCode = commentCode;
	}
	
}
