package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.BoardDao;
import com.jass.preate.vo.Board;

public class MyBatisBoardDao implements BoardDao{

	SqlSessionFactory factory = new SqlJassSessionFactory()
	.getSqlSessionFactory();
	
	@Override
	public Board getBoard(String code) {
		
		SqlSession session = factory.openSession(); // Session : 사용자에게 허락된 시간
		
		Board b = session.selectOne("com.jass.preate.dao.BoardDao.getBoard", code);
		session.close();
		
		return b;
	}
	
	@Override
	public List<Board> getBoards(String mid) {
		
		SqlSession session = factory.openSession();
		List<Board> list = session.selectList("getTotalBoards", mid);
		session.close();

		return list;
	}
	
	@Override
	public List<Board> getBoards(int page, String classification, String field, String query,
			String category) {
		
		SqlSession session = factory.openSession();
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("classification", classification);
		params.put("field", field);
		params.put("query", query);
		params.put("category", category);

		List<Board> list = session.selectList("getBoards", params);
		session.close();

		return list;
	}
	
	@Override
	public List<Board> getBoards(int page, String classification) {
		return getBoards(page, classification, "WRITER", "", null);
	}
	
	@Override
	public List<Board> getBoards(int page, String classification, String category) {
		return getBoards(page, classification, "WRITER", "", category);
	}
	
	@Override
	public int addBoard(Board board) {
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.insert(
					"com.jass.preate.dao.BoardDao.addBoard", board);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;

	}

	@Override
	public int changeBoard(Board board) {
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.update(
					"com.jass.preate.dao.BoardDao.changeBoard", board);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;

	}

	@Override
	public int removeBoard(String code) {
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.BoardDao.removeBoard", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;

	}

	@Override
	public String getLastCode() {
		
		SqlSession session = factory.openSession();

		String code = session.selectOne("getLastCode");
		session.close();
		
		return code;
		
	}



}
