package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.FieldSelect;

public interface FieldSelectDao {
	
	public List<FieldSelect> getFieldSelects(String mid);
	
	public int addFieldSelect(FieldSelect fieldSelect);
	
	public int removeFieldSelect(String mid);

}
