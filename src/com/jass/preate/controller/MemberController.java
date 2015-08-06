package com.jass.preate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.dao.MemberDao;
import com.jass.preate.dao.MemberRoleDao;
import com.jass.preate.vo.FieldSelect;
import com.jass.preate.vo.Member;
import com.jass.preate.vo.MemberRole;

@Controller
@RequestMapping("/myPage/*")
public class MemberController {

	private MemberDao memberDao;
	private FieldSelectDao fieldSelectDao;
	private MemberRoleDao memberRoleDao;
	
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Autowired
	public void setFieldSelectDao(FieldSelectDao fieldSelectDao) {
		this.fieldSelectDao = fieldSelectDao;
	}

	@Autowired
	public void setMemberRoleDao(MemberRoleDao memberRoleDao) {
		this.memberRoleDao = memberRoleDao;
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "myPage.join"; // forward
	}

	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join(Member m, HttpServletRequest request,String[] fieldCode){
		
		memberDao.addMember(m);
		
		MemberRole memberRole = new MemberRole();
		memberRole.setMid(m.getMid());
		memberRole.setRoleName("ROLE_USER");
		memberRoleDao.addMemberRole(memberRole);
		
		FieldSelect f = new FieldSelect();
		
		if(fieldCode != null){
			for(String code : fieldCode){
				f.setMid(m.getMid());
				f.setFieldCode(code);
				fieldSelectDao.addFieldSelect(f);
			}
		}
		return "redirect:../index";
	}
}
