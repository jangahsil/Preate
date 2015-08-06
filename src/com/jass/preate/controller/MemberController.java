package com.jass.preate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.dao.MemberDao;
import com.jass.preate.vo.FieldSelect;
import com.jass.preate.vo.Member;

@Controller
@RequestMapping("/myPage/*")
public class MemberController {

	private MemberDao memberDao;
	private FieldSelectDao fieldSelectDao;
	
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Autowired
	public void setFieldSelectDao(FieldSelectDao fieldSelectDao) {
		this.fieldSelectDao = fieldSelectDao;
	}

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "myPage.join"; // forward
	}

	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join(Member m, HttpServletRequest request,String[] fieldCode){
		
		memberDao.addMember(m);
		
		FieldSelect f = new FieldSelect();
		
		for(String code : fieldCode){
			f.setMid(m.getMid());
			f.setFieldCode(code);
			fieldSelectDao.addFieldSelect(f);
		}
		return "redirect:join";
	}
}
