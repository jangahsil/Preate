package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.ProjectCommentDao;
import com.jass.preate.vo.CommentsComment;
import com.jass.preate.vo.ProjectComment;

public class MyBatisProjectCommentDao implements ProjectCommentDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ProjectComment> getProjectComments(int page, String projectCode) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("projectCode", projectCode);

		List<ProjectComment> list = session.selectList("getProjectComments",
				params);

		for (ProjectComment pComment : list) {
			
			HashMap<String, Object> params2 = new HashMap<String, Object>();
			params2.put("page", 1);
			params2.put("commentCode", pComment.getCode());
			
			List<CommentsComment> list2 = session.selectList(
					"getCommentsComments", params2);
			pComment.setCommentsComments(list2);
		}

		return list;

	}

	@Override
	public int addProjectComment(ProjectComment projectComment) {

		return session.insert(
				"com.jass.preate.dao.ProjectCommentDao.addProjectComment",
				projectComment);
	}

	@Override
	public int changeProjectComment(ProjectComment projectComment) {

		return session.update(
				"com.jass.preate.dao.ProjectCommentDao.changeProjectComment",
				projectComment);
	}

	@Override
	public int removeProjectComment(String code) {

		return session.delete("removeProjectComment", code);

	}
	
	@Override
	public int removeProjectComments(String projectCode) {
		
		return session.delete("removeProjectComments", projectCode);
	}

	@Override
	public List<String> getCodes(String projectCode) {

		return session.selectList("getCodes", projectCode);
	}

}
