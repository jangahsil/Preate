package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Comment;

public interface CommentDao {
	
	public List<Comment> getComments(String boardCode);
	
	public List<Comment> getComments(int page, String boardCode);
	
	public int addComment(Comment comment);
	
	public int changeComment(Comment comment);
	
	public int removeComment(String code);

}
