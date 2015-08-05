package com.jass.preate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jass.preate.dao.MemberDao;
import com.jass.preate.vo.Member;

@Controller
@RequestMapping("/myPage/*")
public class CustomerController {

	private MemberDao memberDao;

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String joinBasic() {
		return "/WEB-INF/view/myPage/join.jsp"; // forward
	}

	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinBasic(Member m, HttpServletRequest request ){
		memberDao.addMember(m);
		
		return "redirect:join";
	}
	
}
