package com.jass.preate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.CustomerServiceDao;
import com.jass.preate.vo.CustomerService;

@Controller
@RequestMapping("")
public class CustomerServiceController {
	
	@Autowired
	private CustomerServiceDao customerServiceDao;
	
	@RequestMapping(value = "customer", method = RequestMethod.POST)
	public String customer(CustomerService cs) {
		
		customerServiceDao.addCustomerService(cs);
		
		return "management.customer";
	}

	@RequestMapping(value = "customer", method = RequestMethod.GET)
	public String customer() {
		
		return "customer";
	}

}
