package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.PortfolioDao;
import com.jass.preate.vo.Portfolio;

public class MyBatisPortfolioDao implements PortfolioDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int addPortfolio(Portfolio portfolio) {

		return session.insert("com.jass.preate.dao.PortfolioDao.addPortfolio",
				portfolio);

	}

	@Override
	public int removePortfolio(String code) {

		return session.delete(
				"com.jass.preate.dao.PortfolioDao.removePortfolio", code);
	}

	@Override
	public List<Portfolio> getPortfolios(int page, String field, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);

		return session.selectList("getPortfolios", params);
	}

	@Override
	public List<Portfolio> getPortfolios(int page) {
		return getPortfolios(page, "WRITER", "");
	}

	@Override
	public Portfolio getPortfolio(String code) {

		return session.selectOne("com.jass.preate.dao.mybatis.getPortfolio",
				code);
	}
}