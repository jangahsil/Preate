package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.MessageDao;
import com.jass.preate.vo.Message;
import com.jass.preate.vo.ProjectComment;


public class MyBatisMessageDao implements MessageDao {
	
	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();

	@Override
	public Message getMessage(String page) {
		
		SqlSession session = factory.openSession(); 

		Message message = session.selectOne("com.jass.preate.dao.MessageDao.getMessage",page);

		session.close();
		
		return message;
	}
	
	@Override
	public List<Message> getSendMessages(int page, String recipient) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("code", recipient);
		
		SqlSession session = factory.openSession(); 

		List<Message> list = session.selectList("getSendMessages", params);
		session.close();
		
		return list;
	}

	@Override
	public List<Message> getReceiveMessages(int page, String writer) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("code", writer);
		
		SqlSession session = factory.openSession(); 

		 List<Message> list = session.selectList("getReceiveMessages", params);
		session.close();
		
		return list;
	}

	@Override
	public int addMessage(Message message) {
		
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			
			result = session.insert("com.jass.preate.dao.MessageDao.addMessage",message);
			session.commit();
			
		}
		
		finally{
			
			session.rollback();
			session.close();
			
		}
		
		return result;
	}

	@Override
	public int removeMessage(String code) {
		
		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			
			result = session.delete("com.jass.preate.dao.MessageDao.removeMessage", code);
			session.commit();
			
		}
		
		finally{
			
			session.rollback();
			session.close();
			
		}
		
		return result;

	}

	@Override
	public int removeMessages(String[] codes) {

		SqlSession session = factory.openSession(); 
		
		int result = 0; 
		
		try{	
			for (int i = 0; i < codes.length; i++)
				result = session.delete("com.jass.preate.dao.MessageDao.removeMessage", codes[i]);
			session.commit();
			
		}
		finally{
			session.rollback();
			session.close();
		}
		return result;
	}
}
