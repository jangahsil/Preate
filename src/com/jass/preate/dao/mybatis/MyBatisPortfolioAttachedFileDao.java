package com.jass.preate.dao.mybatis;

import java.util.List;

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
	public List<PortfolioAttachedFile> getPortfolioAttachedFiles(
			String portfolioCode) {
		
		return session.selectList("getPortfolioAttachedFiles", portfolioCode);
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
