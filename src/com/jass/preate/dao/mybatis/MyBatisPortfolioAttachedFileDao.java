package com.jass.preate.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.PortfolioAttachedFileDao;
import com.jass.preate.vo.PortfolioAttachedFile;


public class MyBatisPortfolioAttachedFileDao implements PortfolioAttachedFileDao {
	
	SqlSessionFactory factory = new SqlJassSessionFactory()
	.getSqlSessionFactory();

	@Override
	public int addPortfolioAttachedFile(PortfolioAttachedFile portfolioAttachedFile) {
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.insert(
					"com.jass.preate.dao.PortfolioAttachedFileDao.addPortfolioAttachedFile", portfolioAttachedFile);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}
	
	@Override
	public int removePortfolioAttachedFile(String code) {
		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.delete(
					"com.jass.preate.dao.PortfolioAttachedFileDao.removePortfolioAttachedFile", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

}
