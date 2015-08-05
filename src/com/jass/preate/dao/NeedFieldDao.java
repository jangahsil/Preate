package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.NeedField;

public interface NeedFieldDao {
	
	public List<NeedField> getNeedFields(String projectCode);
	
	public int addNeedField(NeedField needField);
	
	public int removeNeedField(String mid);

}
