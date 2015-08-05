package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.BoardAttachmentDao;
import com.jass.preate.vo.BoardAttachment;

public class MyBatisBoardAttachmentDao implements BoardAttachmentDao{
	
	SqlSessionFactory factory = new SqlJassSessionFactory()
	.getSqlSessionFactory();
	
	@Override
	public List<BoardAttachment> getBoardAttachments(String boardCode) {
		
		SqlSession session = factory.openSession();
		List<BoardAttachment> list = session.selectList("getBoardAttachments", boardCode);
		session.close();

		return list;
	}

	@Override
	public int addBoardAttachment(BoardAttachment boardAttachment) {
		
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.insert(
					"com.jass.preate.dao.BoardAttachmentDao.addBoardAttachment", boardAttachment);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}
	

	@Override
	public int removeBoardAttachment(String code) {
		
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.BoardAttachmentDao.removeboardAttachment", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

}