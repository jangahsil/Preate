package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.CommentsCommentDao;
import com.jass.preate.vo.CommentsComment;

public class MyBatisCommentsCommentDao implements CommentsCommentDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<CommentsComment> getCommentsComments(String commentCode) {

		return session.selectList(
						"com.jass.preate.dao.CommentsCommentDao.getTotalCommentsComments",
						commentCode);
	}

	@Override
	public List<CommentsComment> getCommentsComments(int page,
			String commentCode) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("commentCode", commentCode);

		return session.selectList(
				"com.jass.preate.dao.CommentsCommentDao.getCommentsComments",
				params);
	}

	@Override
	public int addCommentsComment(CommentsComment commentsComment) {

		return session
				.insert("com.jass.preate.dao.CommentsCommentDao.addCommentsComment",
						commentsComment);
	}

	@Override
	public int changeCommentsComment(CommentsComment commentsComment) {

		return session
				.update("com.jass.preate.dao.CommentsCommentDao.changeCommentsComment",
						commentsComment);
	}

	@Override
	public int removeCommentsComment(String code) {

		return session
				.delete("com.jass.preate.dao.CommentsCommentDao.removeCommentsComment",
						code);
	}

}
