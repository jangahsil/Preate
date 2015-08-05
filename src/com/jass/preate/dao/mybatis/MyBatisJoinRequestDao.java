package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.JoinRequestDao;
import com.jass.preate.vo.JoinRequest;

public class MyBatisJoinRequestDao implements JoinRequestDao {

	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public List<JoinRequest> getJoinRequests(String projectCode) {

		SqlSession session = factory.openSession();
		
		List<JoinRequest> list = session.selectList("getJoinRequests",projectCode);
		session.close();
		
		return list;
	}

	@Override
	public List<JoinRequest> getAcceptJoins(String projectCode) {

		SqlSession session = factory.openSession();
		
		List<JoinRequest> list = session.selectList("getAcceptJoins",projectCode);
		session.close();
		
		return list;
	}

	@Override
	public int addJoinRequest(JoinRequest joinRequest) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.insert("com.jass.preate.dao.JoinRequestDao.addJoinRequest", joinRequest);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

	@Override
	public int changeJoinRequest(JoinRequest joinRequest) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.update("com.jass.preate.dao.JoinRequestDao.changeJoinRequest", joinRequest);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

	@Override
	public int removeJoinRequest(String code) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.delete("com.jass.preate.dao.JoinRequestDao.removeJoinRequest", code);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

}
