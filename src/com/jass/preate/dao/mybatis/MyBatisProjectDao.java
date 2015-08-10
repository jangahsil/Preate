package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.ProjectDao;
import com.jass.preate.vo.JoinRequest;
import com.jass.preate.vo.Project;

public class MyBatisProjectDao implements ProjectDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Project getProject(String code) {

		return session.selectOne("com.jass.preate.dao.ProjectDao.getProject",
				code);
	}
	
	@Override
	public List<Project> getProjects(int page) {
		return getProjects(page, null, "");
	}

	@Override
	public List<Project> getProjects(int page, String category) {
		return getProjects(page, category, "");
	}

	@Override
	public List<Project> getProjects(int page, String category, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("category", category);
		params.put("query", query);

		List<Project> list = session.selectList("getProjects", params);

		for (Project p : list) {
			List<JoinRequest> list2 = session.selectList("getJoinRequests",
					p.getCode());
			p.setJoinRequest(list2);
		}

		return list;
	}

	@Override
	public int addProject(Project project) {

		return session.insert("com.jass.preate.dao.ProjectDao.addProject",
				project);
	}

	@Override
	public int changeProject(Project project) {

		return session.update("com.jass.preate.dao.ProjectDao.changeProject",
				project);
	}

	@Override
	public int removeProject(String code) {

		return session.delete("com.jass.preate.dao.ProjectDao.removeProject",
				code);
	}

	@Override
	public List<Project> getProjects() {
		return getProjects(1, null, "");
	}
	
	@Override
	public List<Project> getProjectsIndex(int page) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);

		return session.selectList("getProjectsIndex", params);
	}
}
