package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.MemberDao;
import com.jass.preate.vo.Member;

public class MyBatisMemberDao implements MemberDao {

	SqlSessionFactory factory = new SqlJassSessionFactory()
			.getSqlSessionFactory();

	@Override
	public List<Member> getMembers(int page, String Field, String query,
			String startDate, String endDate) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", Field);
		params.put("query", query);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		SqlSession session = factory.openSession();
		List<Member> list = session.selectList("getMembers", params);
		session.close();
		return list;
	}

	@Override
	public List<Member> getMembers(int page) {
		return getMembers(page, "MID", "", "2015-01-01", "2015-07-01");
	}

	@Override
	public int addMember(Member member) {
		SqlSession session = factory.openSession();

		int result = 0;
		try {
			result = session.insert("com.jass.preate.dao.MemberDao.addMember",
					member);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int removeMember(String mid) {

		SqlSession session = factory.openSession();

		int result = 0;
		try {
			result = session.delete(
					"com.jass.preate.dao.MemberDao.removeMember", mid);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public Member getMember(String mid) {
		SqlSession session = factory.openSession();
		Member m = session.selectOne("com.jass.preate.dao.MemberDao.getMember",
				mid);
		session.close();

		return m;
	}

	@Override
	public int changeMember(Member member) {

		SqlSession session = factory.openSession();

		int result = 0;
		try {
			result = session.update(
					"com.jass.preate.dao.MemberDao.changeMember", member);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}
}
