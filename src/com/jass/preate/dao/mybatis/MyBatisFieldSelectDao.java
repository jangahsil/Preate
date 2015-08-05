package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.vo.FieldSelect;

public class MyBatisFieldSelectDao implements FieldSelectDao {

	private SqlSession session;
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<FieldSelect> getFieldSelects(String mid) {
		
		return session.selectList("getFieldSelects", mid);
	}

	@Override
	public int addFieldSelect(FieldSelect fieldSelect) {
		
		return session.insert("com.jass.preate.dao.FieldSelectDao.addFieldSelect", fieldSelect);
	}

	@Override
	public int removeFieldSelect(String mid) {
				
		return session.delete("com.jass.preate.dao.FieldSelectDao.removeFieldSelect", mid);
	}

}
