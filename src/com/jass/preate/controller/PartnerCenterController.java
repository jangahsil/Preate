package com.jass.preate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/partnerCenter/*")
public class PartnerCenterController {
	
	@RequestMapping("partnerCenter")
	public String partnerCenter() {
		
		return "partnerCenter.partnerCenter";
		
	}
}
