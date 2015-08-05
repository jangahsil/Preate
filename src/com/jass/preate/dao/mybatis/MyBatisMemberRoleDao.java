package com.jass.preate.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.MemberRoleDao;
import com.jass.preate.vo.MemberRole;

public class MyBatisMemberRoleDao implements MemberRoleDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int addMemberRole(MemberRole memberRole) {
		
		return session.insert("com.jass.preate.dao.MemberRoleDao.addMemberRole", memberRole);
	}

	@Override
	public int removeMemberRole(MemberRole memberRole) {
		
		return session.delete("com.jass.preate.dao.MemberRoleDao.removeMemberRole", memberRole);
	}
}
