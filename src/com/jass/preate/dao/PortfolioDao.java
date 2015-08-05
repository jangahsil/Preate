package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Portfolio;

public interface PortfolioDao {
	
	public List<Portfolio> getPortfolios(
			int page, 
			String field,
			String query);//°Ë»ö
	
	public List<Portfolio> getPortfolios(int page);
	
	public Portfolio getPortfolio(String code); 
	
	public int addPortfolio(Portfolio portfolio);
	
	public int removePortfolio(String code);
	
	public String getLastCode();
	
}
