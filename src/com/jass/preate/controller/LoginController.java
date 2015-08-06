package com.jass.preate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/myPage/*")
public class LoginController{
	
	@RequestMapping("login")
	public String login()
	{
		return "myPage.login.login";
	}
}

