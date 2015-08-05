package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.JoinRequestDao;
import com.jass.preate.vo.JoinRequest;

public class MyBatisJoinRequestDao implements JoinRequestDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<JoinRequest> getJoinRequests(String projectCode) {
		
		return session.selectList("getJoinRequests",projectCode);
	}

	@Override
	public List<JoinRequest> getAcceptJoins(String projectCode) {

		return session.selectList("getAcceptJoins",projectCode);
	}

	@Override
	public int addJoinRequest(JoinRequest joinRequest) {
		
		return session.insert("com.jass.preate.dao.JoinRequestDao.addJoinRequest", joinRequest);
	}

	@Override
	public int changeJoinRequest(JoinRequest joinRequest) {
		
		return session.update("com.jass.preate.dao.JoinRequestDao.changeJoinRequest", joinRequest);
	}

	@Override
	public int removeJoinRequest(String code) {
		
		return session.delete("com.jass.preate.dao.JoinRequestDao.removeJoinRequest", code);
	}

}
