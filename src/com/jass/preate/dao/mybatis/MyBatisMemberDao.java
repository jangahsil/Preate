package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.MemberDao;
import com.jass.preate.vo.Member;

public class MyBatisMemberDao implements MemberDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<Member> getMembers(int page, String Field, String query,
			String startDate, String endDate) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", Field);
		params.put("query", query);
		params.put("startDate", startDate);
		params.put("endDate", endDate);
		
		return session.selectList("getMembers", params);
	}

	@Override
	public List<Member> getMembers(int page) {
		return getMembers(page, "MID", "", "2015-01-01", "2015-12-01");
	}

	@Override
	public int addMember(Member member) {
		return session.insert("com.jass.preate.dao.MemberDao.addMember", member);
	}

	@Override
	public int removeMember(String mid) {
		return session.delete("com.jass.preate.dao.MemberDao.removeMember", mid);
	}

	@Override
	public Member getMember(String mid) {
		return session.selectOne("com.jass.preate.dao.MemberDao.getMember", mid);
	}

	@Override
	public int changeMember(Member member) {
		return session.update("com.jass.preate.dao.MemberDao.changeMember", member);
	}
}
