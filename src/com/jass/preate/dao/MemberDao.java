package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Member;

public interface MemberDao {
	
	public List<Member> getMembers(
											int page, 
											String Field, //검색 분류
											String query, //검색어
											String startDate,
											String endDate);
	
	public List<Member> getMembers(int page);	 //기본값주자	

	public int addMember(Member member);

	public int removeMember(String mid);

	public Member getMember(String mid);
	
	public int changeMember(Member member);
	
}
