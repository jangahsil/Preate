package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.JoinRequest;

public interface JoinRequestDao {

	public List<JoinRequest> getJoinRequests(String projectCode);
	
	public List<JoinRequest> getAcceptJoins(String projectCode);
	
	public int addJoinRequest(JoinRequest joinRequest);
	
	public int changeJoinRequest(JoinRequest joinRequest);
	
	public int removeJoinRequest(String code);
	
}
