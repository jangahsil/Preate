package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.PortfolioDao;
import com.jass.preate.vo.Board;
import com.jass.preate.vo.Portfolio;

public class MyBatisPortfolioDao implements PortfolioDao {

	SqlSessionFactory factory = new SqlJassSessionFactory()
			.getSqlSessionFactory();

	@Override
	public int addPortfolio(Portfolio portfolio) {
		
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.insert(
					"com.jass.preate.dao.PortfolioDao.addPortfolio", portfolio);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;

	}

	@Override
	public int removePortfolio(String code) {
		
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.PortfolioDao.removePortfolio", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public List<Portfolio> getPortfolios(int page, String field, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);

		SqlSession session = factory.openSession();
		List<Portfolio> list = session.selectList("getPortfolios", params);
		session.close();

		return list;
	}
	
	@Override
	public List<Portfolio> getPortfolios(int page) {
		return getPortfolios(page,"WRITER", "");
	}

	@Override
	public Portfolio getPortfolio(String code) {
		SqlSession session = factory.openSession(); // Session : 사용자에게 허락된 시간

		Portfolio p = session.selectOne("com.jass.preate.dao.mybatis.getPortfolio",code);
		session.close();

		return p;
	}
}