package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.CommentsCommentDao;
import com.jass.preate.vo.CommentsComment;

public class MyBatisCommentsCommentDao implements CommentsCommentDao {

	SqlSessionFactory factory = new SqlJassSessionFactory()
			.getSqlSessionFactory();

	@Override
	public List<CommentsComment> getCommentsComments(String commentCode) {

		SqlSession session = factory.openSession();

		List<CommentsComment> list = session
				.selectList(
						"com.jass.preate.dao.CommentsCommentDao.getTotalCommentsComments",
						commentCode);
		session.close();

		return list;
	}

	@Override
	public List<CommentsComment> getCommentsComments(int page,
			String commentCode) {

		SqlSession session = factory.openSession();

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("commentCode", commentCode);

		List<CommentsComment> list = session.selectList(
				"com.jass.preate.dao.CommentsCommentDao.getCommentsComments",
				params);
		session.close();

		return list;
	}

	@Override
	public int addCommentsComment(CommentsComment commentsComment) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session
					.insert("com.jass.preate.dao.CommentsCommentDao.addCommentsComment",
							commentsComment);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int changeCommentsComment(CommentsComment commentsComment) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session
					.update("com.jass.preate.dao.CommentsCommentDao.changeCommentsComment",
							commentsComment);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int removeCommentsComment(String code) {

		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session
					.delete("com.jass.preate.dao.CommentsCommentDao.removeCommentsComment",
							code);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

}
