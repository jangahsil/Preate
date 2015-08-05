package com.jass.preate.dao.mybatis;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.ContestDao;
import com.jass.preate.vo.Contest;

public class MyBatisContestDao implements ContestDao{
	SqlSessionFactory factory=new SqlJassSessionFactory().getSqlSessionFactory(); 

	@Override
	public Contest getContest(String code) {

		SqlSession session= factory.openSession();
		
		Contest contest= session.selectOne("com.jass.preate.dao.ContestDao.getContest",code);
		session.close();
		return contest;
		
	}

	@Override
	public int addContest(Contest contest) {

		SqlSession session= factory.openSession();
		int result=0;
		
		try{
			result= session.insert("com.jass.preate.dao.ContestDao.addContest", contest);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}
		
		return result;
	}


	@Override
	public int changeContest(Contest contest) {
		SqlSession session= factory.openSession();
		int result=0;
		
		try{
			result= session.update("com.jass.preate.dao.ContestDao.changeContest", contest);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}
		
		return result;
	}


	@Override
	public int removeContest(String code) {
		SqlSession session= factory.openSession();
		int result=0;
		
		try{
			result= session.delete("com.jass.preate.dao.ContestDao.removeContest",code);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}
		
		return result;
	}

	@Override
	public List<Contest> getContests(int page, String field, String query) {
		
		HashMap<String,Object> params= new HashMap<String,Object>();
		params.put("page",page);
		params.put("field",field);
		params.put("query",query);
		
		SqlSession session= factory.openSession();
		List<Contest> list= session.selectList("com.jass.preate.dao.ContestDao.getContests",params);
		session.close();
		return list;
	}

	@Override
	public List<Contest> getContests(int page) {

		return getContests(page, "TITLE", "");
	}
}
