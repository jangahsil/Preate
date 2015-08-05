package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.CommentDao;
import com.jass.preate.vo.Comment;


public class MyBatisCommentDao implements CommentDao{
	
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<Comment> getComments(String boardCode) {

		return session.selectList("com.jass.preate.dao.CommentDao.getTotalComments", boardCode);
	}
		
	@Override
	public List<Comment> getComments(int page, String boardCode) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("boardCode", boardCode);

		return session.selectList("getComments", params);
	}

	@Override
	public int addComment(Comment comment) {

		return session.insert("addComment", comment);
	}
	

	@Override
	public int changeComment(Comment comment) {

		return session.update("changeComment", comment);
	}

	@Override
	public int removeComment(String code) {

		return session.delete("removeComment", code);
	}

	@Override
	public int removeComments(String boardCode) {

		return session.delete("removeComments", boardCode);
	}

}
