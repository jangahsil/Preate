package com.jass.preate.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.ScrapDao;
import com.jass.preate.vo.Scrap;


public class MyBatisScrapDao implements ScrapDao {

	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public int addScrap(Scrap scrap) {
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			
			result = session.insert("com.jass.preate.dao.ScrapDao.addScrap",scrap);
			session.commit();
			
		}
		
		finally{
			
			session.rollback();
			session.close();
			
		}
		
		return result;
	}

	@Override
	public int removeScrap(String code) {
		
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			
			result = session.delete("com.jass.preate.dao.ScrapDao.removeScrap", code);
			session.commit();
			
		}
		
		finally{
			
			session.rollback();
			session.close();
			
		}
		
		return result;
	}

}
