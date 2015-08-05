package com.jass.preate.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.PortfolioAttachedFileDao;
import com.jass.preate.vo.PortfolioAttachedFile;

public class MyBatisPortfolioAttachedFileDao implements
		PortfolioAttachedFileDao {

	private SqlSession session;

	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public int addPortfolioAttachedFile(
			PortfolioAttachedFile portfolioAttachedFile) {

		return session
				.insert("com.jass.preate.dao.PortfolioAttachedFileDao.addPortfolioAttachedFile",
						portfolioAttachedFile);
	}

	@Override
	public int removePortfolioAttachedFile(String code) {

		return session
				.delete("com.jass.preate.dao.PortfolioAttachedFileDao.removePortfolioAttachedFile",
						code);
	}

}
