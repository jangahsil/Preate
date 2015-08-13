package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.ContestDao;
import com.jass.preate.vo.Contest;

public class MyBatisContestDao implements ContestDao{
	
	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public Contest getContest(String code) {

		return session.selectOne("com.jass.preate.dao.ContestDao.getContest",code);
		
	}

	@Override
	public int addContest(Contest contest) {
		
		return session.insert("com.jass.preate.dao.ContestDao.addContest", contest);
	}


	@Override
	public int changeContest(Contest contest) {

		return session.update("com.jass.preate.dao.ContestDao.changeContest", contest);
	}


	@Override
	public int removeContest(String code) {
		
		return session.delete("com.jass.preate.dao.ContestDao.removeContest",code);
	}

	@Override
	public List<Contest> getContests(int page, String field, String query) {
		
		HashMap<String,Object> params= new HashMap<String,Object>();
		params.put("page",page);
		params.put("field",field);
		params.put("query",query);

		return session.selectList("com.jass.preate.dao.ContestDao.getContests",params);
	}

	@Override
	public List<Contest> getContests(int page) {

		return getContests(page, "TITLE", "");
	}

	@Override
	public List<Contest> getContestsIndex(int page) {
		
		HashMap<String,Object> params= new HashMap<String, Object>();
		params.put("page",page);

		return session.selectList("com.jass.preate.dao.ContestDao.getContestsIndex",params);
	}
}
