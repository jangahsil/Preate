package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Advertise;

public interface AdvertiseDao {
	
	public Advertise getAdvertise(String code);
	
	public List<Advertise> getAdvertises(int page);
	
	public List<Advertise> getAdvertises(int page
										,String field
										,String query
				);
	
	public int addAdvertise(Advertise advertise);
	
	public int changeAdvertise(Advertise advertise);
	
	public int removeAdvertise(String code);
	
}
