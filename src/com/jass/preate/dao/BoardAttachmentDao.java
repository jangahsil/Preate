package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.BoardAttachment;

public interface BoardAttachmentDao {
	
	public List<BoardAttachment> getBoardAttachments(String boardCode);
	
	public int addBoardAttachment(BoardAttachment boardAttachment);
	
	public int removeBoardAttachment(String code);

}
