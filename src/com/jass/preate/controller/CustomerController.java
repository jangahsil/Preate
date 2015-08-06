package com.jass.preate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.dao.MemberDao;
import com.jass.preate.vo.Member;

@Controller
@RequestMapping("/myPage/*")
public class CustomerController {

	private MemberDao memberDao;
	private FieldSelectDao fieldSelectDao;

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "/WEB-INF/view/myPage/join.jsp"; // forward
	}

	// 남표야 이거 해결해조 
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinBasic(Member m, HttpServletRequest request ){
		memberDao.addMember(m);
		return "redirect:join";
	}
}
