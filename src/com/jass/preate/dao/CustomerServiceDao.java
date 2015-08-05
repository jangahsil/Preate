package com.jass.preate.dao;


import java.util.List;

import com.jass.preate.vo.CustomerService;

public interface CustomerServiceDao {
	
	public List<CustomerService> getCustomerServices(int page, String field, String query);
	
	public List<CustomerService> getCustomerServices(int page);
	
	public CustomerService getCustomerService(String code);
	
	public int addCustomerService(CustomerService customerService);
	
	public int removeCustomerService(String code);
	
	public int removeCustomerServices(String[] codes);

}
