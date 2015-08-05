package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.NoticeDao;
import com.jass.preate.vo.Notice;

public class MyBatisNoticeDao implements NoticeDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Notice getNotice(String code) {

		return session.selectOne("com.jass.preate.dao.NoticeDao.getNotice", code);
	}

	@Override
	public List<Notice> getNotices(String boardClassification) {

		return session.selectList("getNotices", boardClassification);
	}

	@Override
	public List<Notice> getTotalNotices(int page) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);

		return session.selectList("getTotalNotices", params);
	}

	@Override
	public int addNotice(Notice notice) {

		return session.insert("com.jass.preate.dao.NoticeDao.addNotice", notice);
	}

	@Override
	public int changeNotice(Notice notice) {

		return session.update("com.jass.preate.dao.NoticeDao.changeNotice", notice);
	}

	@Override
	public int updateNotice(Notice notice) {

		return session.update("com.jass.preate.dao.NoticeDao.updateNotice", notice);
	}

	@Override
	public int removeNotice(String code) {

		return session.delete("com.jass.preate.dao.NoticeDao.removeNotice", code);
	}

}
