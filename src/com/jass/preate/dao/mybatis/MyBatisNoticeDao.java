package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.NoticeDao;
import com.jass.preate.vo.Notice;

public class MyBatisNoticeDao implements NoticeDao {

	SqlSessionFactory factory = new SqlJassSessionFactory()
			.getSqlSessionFactory();

	@Override
	public Notice getNotice(String code) {

		SqlSession session = factory.openSession();

		Notice notice = session.selectOne(
				"com.jass.preate.dao.NoticeDao.getNotice", code);

		session.close();

		return notice;
	}

	@Override
	public List<Notice> getNotices(String boardClassification) {

		SqlSession session = factory.openSession();

		List<Notice> list = session.selectList("getNotices",
				boardClassification);
		session.close();

		return list;
	}

	@Override
	public List<Notice> getTotalNotices(int page) {

		SqlSession session = factory.openSession();
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);

		List<Notice> list = session.selectList("getTotalNotices", params);
		session.close();

		return list;
	}

	@Override
	public int addNotice(Notice notice) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.insert("com.jass.preate.dao.NoticeDao.addNotice",
					notice);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int changeNotice(Notice notice) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.update(
					"com.jass.preate.dao.NoticeDao.changeNotice", notice);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int updateNotice(Notice notice) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.update(
					"com.jass.preate.dao.NoticeDao.updateNotice", notice);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public int removeNotice(String code) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.NoticeDao.removeNotice", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;

	}

}
