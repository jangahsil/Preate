package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.ProjectComment;

public interface ProjectCommentDao {
	
	public List<ProjectComment> getProjectComments(
			int page,
			String projectCode
		);
	
	public int addProjectComment(ProjectComment projectComment);
	
	public int changeProjectComment(ProjectComment projectComment);
	
	public int removeProjectComment(String code);
	
	public int removeProjectComments(String projectCode);
	
	public List<String> getCodes(String projectCode);

}
