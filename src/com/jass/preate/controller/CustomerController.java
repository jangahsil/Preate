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
	
	@RequestMapping(value = "joinBasic", method = RequestMethod.GET)
	public String joinBasic() {
		return "/WEB-INF/view/myPage/joinBasic.jsp"; // forward
	}
	
	@RequestMapping(value = "joinState", method = RequestMethod.GET)
	public String joinState() {
		return "/WEB-INF/view/myPage/joinState.jsp"; // forward
	}
	
	@RequestMapping(value = "joinCareer", method = RequestMethod.GET)
	public String joinCareer() {
		return "/WEB-INF/view/myPage/joinCareer.jsp"; // forward
	}

	@RequestMapping(value="joinBasic", method=RequestMethod.POST)
	public String joinBasic(Member member, MultipartFile file, HttpServletRequest request){
		return "redirect:joinState";
	}
	
	@RequestMapping(value="joinState", method=RequestMethod.POST)
	public String joinState(Member member, MultipartFile file, HttpServletRequest request){
		return "redirect:joinCareer";
	}
	
	@RequestMapping(value="joinCareer", method=RequestMethod.POST)
	public String joinCareer(Member member, MultipartFile file, HttpServletRequest request){
		return "redirect:index"; // index 나중에 추가 
	}

}
