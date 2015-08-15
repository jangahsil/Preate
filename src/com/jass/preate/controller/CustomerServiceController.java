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

		cs.setWriter("js");
		customerServiceDao.addCustomerService(cs);

		return "customerClose";
	}

	@RequestMapping(value = "customer", method = RequestMethod.GET)
	public String customer() {

		return "customer";
	}

	@RequestMapping(value = "customerClose", method = RequestMethod.GET)
	public String customerClose() {

		return "customerClose";
	}

	@RequestMapping(value = "customerClose", method = RequestMethod.POST)
	public String customerclose() {

		return "customerClose";
	}

	@RequestMapping(value = "alert", method = RequestMethod.GET)
	public String alert() {

		return "alert";
	}

	@RequestMapping(value = "alert", method = RequestMethod.POST)
	public String alertMessage() {

		return "alert";
	}

}
