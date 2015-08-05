package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.PortfolioAttachedFile;

public interface PortfolioAttachedFileDao {
	
	public List<PortfolioAttachedFile> getPortfolioAttachedFiles(String portfolioCode);
	
	public int addPortfolioAttachedFile(PortfolioAttachedFile portfolioAttachedFile);
	
	public int removePortfolioAttachedFile(String code);
}
