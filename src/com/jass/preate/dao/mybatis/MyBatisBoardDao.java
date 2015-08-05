package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.BoardDao;
import com.jass.preate.vo.Board;

public class MyBatisBoardDao implements BoardDao{

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public Board getBoard(String code) {
		
		return session.selectOne("getBoard", code);
	}
	
	@Override
	public List<Board> getBoards(String mid) {

		return session.selectList("getTotalBoards", mid);
	}
	
	@Override
	public List<Board> getBoards(int page, String classification, String field, String query,
			String category) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("classification", classification);
		params.put("field", field);
		params.put("query", query);
		params.put("category", category);

		return session.selectList("getBoards", params);
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

		return session.insert("addBoard", board);
	}

	@Override
	public int changeBoard(Board board) {

		return session.update("changeBoard", board);
	}

	@Override
	public int removeBoard(String code) {

		return session.delete("removeBoard", code);
	}

	@Override
	public String getLastCode() {
		
		return session.selectOne("getLastCode");	
	}

	@Override
	public int addHit(String code) {
		
		return session.update("addHit", code);
	}
	
}
