package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Contest;

public interface ContestDao {
	
	public Contest getContest(String code);
	
	public List<Contest> getContests(int page);
	
	public List<Contest> getContests(int page
										,String field
										,String query
				);
	
	public int addContest(Contest contest);
	
	public int changeContest(Contest contest);
	
	public int removeContest(String code);
	
}
