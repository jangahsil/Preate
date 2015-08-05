package com.jass.preate.dao;

import com.jass.preate.vo.Scrap;

public interface ScrapDao {
	
	public int addScrap(Scrap scrap);

	public int removeScrap(String code);
		
}
