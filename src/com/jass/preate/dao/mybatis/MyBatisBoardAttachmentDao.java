package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.BoardAttachmentDao;
import com.jass.preate.vo.BoardAttachment;

public class MyBatisBoardAttachmentDao implements BoardAttachmentDao{
	
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<BoardAttachment> getBoardAttachments(String boardCode) {

		return session.selectList("getBoardAttachments", boardCode);
	}

	@Override
	public int addBoardAttachment(BoardAttachment boardAttachment) {
		
		return session.insert("addBoardAttachment", boardAttachment);
	}
	

	@Override
	public int removeBoardAttachment(String code) {
			
		return session.delete("removeBoardAttachment", code);
	}

	@Override
	public int removeBoardAttachments(String boardCode) {
		
		return session.delete("removeBoardAttachments", boardCode);
	}

}