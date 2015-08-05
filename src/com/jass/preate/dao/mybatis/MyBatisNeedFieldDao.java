package com.jass.preate.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.NeedFieldDao;
import com.jass.preate.vo.NeedField;

public class MyBatisNeedFieldDao implements NeedFieldDao {

	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public List<NeedField> getNeedFields(String projectCode) {
		
		SqlSession session = factory.openSession();
		
		List<NeedField> list = session.selectList("getNeedFields",projectCode);
		session.close();
		
		return list;
	}

	@Override
	public int addNeedField(NeedField needField) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.insert("com.jass.preate.dao.NeedFieldDao.addNeedField", needField);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

	@Override
	public int removeNeedField(String code) {

		SqlSession session = factory.openSession();
		
		int result; 
		try{
			result = session.delete("com.jass.preate.dao.NeedFieldDao.removeNeedField", code);
			
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		
		return result;
	}

}
