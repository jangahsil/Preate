package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.vo.FieldSelect;

public class MyBatisFieldSelectDao implements FieldSelectDao {

	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public List<FieldSelect> getFieldSelects(String mid) {

		SqlSession session = factory.openSession();
		
		List<FieldSelect> list = session.selectList("getFieldSelects",mid);
		session.close();
		
		return list;
	}

	@Override
	public int addFieldSelect(FieldSelect fieldSelect) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.insert("com.jass.preate.dao.FieldSelectDao.addFieldSelect", fieldSelect);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

	@Override
	public int removeFieldSelect(String code) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.delete("com.jass.preate.dao.FieldSelectDao.removeFieldSelect", code);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

}
