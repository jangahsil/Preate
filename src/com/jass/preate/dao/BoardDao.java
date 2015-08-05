package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Board;

public interface BoardDao {

	public Board getBoard(String code);
	
	public List<Board> getBoards(String mid);
	
	public List<Board> getBoards(
			int page,
			String classification,
			String field,
			String query,
			String category);//°Ë»ö
	
	public List<Board> getBoards(int page, String classification);
	
	public List<Board> getBoards(int page, String classification, String category);
	
	public int addBoard(Board board);
	
	public int changeBoard(Board board);
	
	public int removeBoard(String code);
	
	public String getLastCode();
	
	public int addHit(String code);

}
