package com.jass.preate.dao;

import com.jass.preate.vo.PortfolioAttachedFile;

public interface PortfolioAttachedFileDao {
	
	public int addPortfolioAttachedFile(PortfolioAttachedFile portfolioAttachedFile);
	
	public int removePortfolioAttachedFile(String code);
}
