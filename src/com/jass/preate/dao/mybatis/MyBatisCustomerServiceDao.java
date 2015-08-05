package com.jass.preate.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jass.preate.dao.CustomerServiceDao;
import com.jass.preate.vo.CustomerService;

public class MyBatisCustomerServiceDao implements CustomerServiceDao {

	private SqlSession session;
	
	
	@Autowired
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<CustomerService> getCustomerServices(int page, String field, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);

		return session.selectList(
				"com.jass.preate.dao.CustomerServiceDao.getCustomerServices",
				params);
	}

	
	@Override
	public List<CustomerService> getCustomerServices(int page) {

		return getCustomerServices(page, "WRITER", "");
	}
	
	@Override
	public CustomerService getCustomerService(String code) {

		return session.selectOne(
				"com.jass.preate.dao.CustomerServiceDao.getCustomerService",
				code);
	}

	@Override
	public int addCustomerService(CustomerService customerService) {

		return session.insert(
				"com.jass.preate.dao.CustomerServiceDao.addCustomerService",
				customerService);
	}

	@Override
	public int removeCustomerService(String code) {

		return session.delete(
				"com.jass.preate.dao.CustomerServiceDao.removeCustomerService",
				code);
	}

	@Override
	public int removeCustomerServices(String[] codes) {

		int cnt = 0;
		int result = 0;

		for (int i = 0; i < codes.length; i++) {
			cnt = session
					.delete("com.jass.preate.dao.CustomerServiceDao.removeCustomerService",
							codes[i]);
			result += cnt;
		}

		return result;
	}

}
