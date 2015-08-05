package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.CommentDao;
import com.jass.preate.vo.Comment;


public class MyBatisCommentDao implements CommentDao{
	
	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public List<Comment> getComments(String boardCode) {
		
		SqlSession session = factory.openSession();
				
		List<Comment> list = session.selectList("com.jass.preate.dao.CommentDao.getTotalComments", boardCode);
		session.close();

		return list;
	}
		
	@Override
	public List<Comment> getComments(int page, String boardCode) {
	
		SqlSession session = factory.openSession();
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("boardCode", boardCode);
		
		List<Comment> list = session.selectList("com.jass.preate.dao.CommentDao.getComments", params);
		session.close();

		return list;
	}

	@Override
	public int addComment(Comment comment) {
		
		SqlSession session = factory.openSession();

		int result = 0;
		
		try {
			result = session.insert("com.jass.preate.dao.CommentDao.addComment", comment);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}
	

	@Override
	public int changeComment(Comment comment) {
		SqlSession session = factory.openSession();

		int result = 0;
		
		try {
			result = session.update("com.jass.preate.dao.CommentDao.changeComment", comment);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int removeComment(String code) {
		
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.delete("com.jass.preate.dao.CommentDao.removeComment", code);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

}
