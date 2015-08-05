package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Notice;

public interface NoticeDao {
	
	public Notice getNotice(String code);
	
	public List<Notice> getNotices(String boardClassification);
	
	public List<Notice> getTotalNotices(int page);
	
	public int addNotice(Notice notice);
	
	public int changeNotice(Notice notice);
	
	public int updateNotice(Notice notice);
	
	public int removeNotice(String code);

}
