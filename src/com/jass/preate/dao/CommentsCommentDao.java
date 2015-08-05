package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.CommentsComment;

public interface CommentsCommentDao {
	
	public List<CommentsComment> getCommentsComments(String commentCode);
	
	public List<CommentsComment> getCommentsComments(int page, String commentCode);
	
	public int addCommentsComment(CommentsComment commentsComment);
	
	public int changeCommentsComment(CommentsComment commentsComment);
	
	public int removeCommentsComment(String code);

}
