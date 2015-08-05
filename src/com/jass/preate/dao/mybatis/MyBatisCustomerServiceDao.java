package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jass.preate.dao.CustomerServiceDao;
import com.jass.preate.vo.CustomerService;

public class MyBatisCustomerServiceDao implements CustomerServiceDao {
	
	SqlSessionFactory factory = new SqlJassSessionFactory().getSqlSessionFactory();

	@Override
	public List<CustomerService> getCustomerServices(int page, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("query", query);

		SqlSession session = factory.openSession();
		List<CustomerService> list = session.selectList("com.jass.preate.dao.CustomerServiceDao.getCustomerServices", params);
		session.close();

		return list;
	}

	@Override
	public List<CustomerService> getCustomerServices(int page) {

		return getCustomerServices(page, "");
	}

	@Override
	public CustomerService getCustomerService(String code) {
		
		SqlSession session = factory.openSession();

		CustomerService customerservice = session.selectOne("com.jass.preate.dao.CustomerServiceDao.getCustomerService", code);
		session.close();

		return customerservice;
	}

	@Override
	public int addCustomerService(CustomerService customerService) {
		
		SqlSession session = factory.openSession();

		int result = 0;
		try {
			result = session.insert("com.jass.preate.dao.CustomerServiceDao.addCustomerService", customerService);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int removeCustomerService(String code) {
		
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.delete("com.jass.preate.dao.CustomerServiceDao.removeCustomerService", code);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public int removeCustomerServices(String[] codes) {
		
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			for (int i = 0; i < codes.length; i++)
				result = session.delete("com.jass.preate.dao.CustomerServiceDao.removeCustomerService", codes[i]);

			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	
	
	
}
