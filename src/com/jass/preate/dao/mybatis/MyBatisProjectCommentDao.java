package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.ProjectCommentDao;
import com.jass.preate.vo.ProjectComment;


public class MyBatisProjectCommentDao implements ProjectCommentDao{

	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();
	
	@Override
	public List<ProjectComment> getProjectComments(int page, String projectCode) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("projectCode", projectCode);
		
		SqlSession session = factory.openSession(); 

		List<ProjectComment> list = session.selectList("getProjectComments", params);
		session.close();
		
		return list;
		
	}
	
	@Override
	public int addProjectComment(ProjectComment projectComment) {
		
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			result = session.insert("com.jass.preate.dao.ProjectCommentDao.addProjectComment",projectComment);
			session.commit();
		}
		
		finally{
			session.rollback();
			session.close();
		}
		
		return result;
	}
	
	
	@Override
	public int changeProjectComment(ProjectComment projectComment) {
		
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			result = session.update("com.jass.preate.dao.ProjectCommentDao.changeProjectComment",projectComment);
			session.commit();
		}
		
		finally{
			session.rollback();
			session.close();
		}
		
		return result;
	}
	
	@Override
	public int removeProjectComment(String code) {
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{		
			result = session.delete("com.jass.preate.dao.ProjectCommentDao.removeProjectComment", code);
			session.commit();
			
		}
		finally{
			session.rollback();
			session.close();
		}
		return result;

	}

}
