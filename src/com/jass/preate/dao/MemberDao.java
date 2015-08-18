package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Member;

public interface MemberDao {
	
	public List<Member> getMembers(
											int page, 
											String Field, //�˻� �з�
											String query, //�˻���
											String startDate,
											String endDate);
	
	public List<Member> getMembers(int page);	 //�⺻������	

	public int addMember(Member member);

	public int removeMember(String mid);

	public Member getMember(String mid);
	
	public int changeMember(Member member);
	
}
