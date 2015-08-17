package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Scrap;

public interface ScrapDao {
	
	public List<String> getProjectCodes(String mid);
	
	public int addScrap(Scrap scrap);

	public int removeScrap(String code);
	
	public List<Scrap> getScrap();
		
}
