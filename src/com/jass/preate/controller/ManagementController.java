package com.jass.preate.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.CustomerServiceDao;
import com.jass.preate.dao.MemberDao;
import com.jass.preate.dao.NoticeDao;
import com.jass.preate.vo.CustomerService;
import com.jass.preate.vo.Member;
import com.jass.preate.vo.Notice;

@Controller
@RequestMapping("/management/*")
public class ManagementController {
	

	private MemberDao memberDao;
	private CustomerServiceDao customerService;
	private NoticeDao noticeDao;
	

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	@Autowired
	public void setCustomerService(CustomerServiceDao customerService) {
		this.customerService = customerService;
	}
	@Autowired
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	/*--------------------------회원관리 컨트롤러------------------------*/
	@RequestMapping(value="memberDelete",method=RequestMethod.POST)
	public String MemerManagementDelete(String c){
			
		return null;
	}
	

	@RequestMapping(value="memberManagement",method=RequestMethod.GET)
	public String MemberManagement(Model model,String page){
		
		if(page == null){
			List<Member> list= memberDao.getMembers(1);
			
			model.addAttribute("list",list);
		}
		
		if(page !=null){
			List<Member> list= memberDao.getMembers(Integer.parseInt(page));
			
			model.addAttribute("list",list);
		}
		return "/WEB-INF/view/management/memberManagement.jsp";
	}
	
	
	
	@RequestMapping(value="memberManagement",method=RequestMethod.POST)
	public String searchMember(String field, String query, Model model){
		
		List<Member> list=memberDao.getMembers(1, field, query,"2015-01-01","2015-12-31");
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/management/memberManagement.jsp";
		
	}
	
	@RequestMapping("removeMember")
	public String removeMember(String c){
		
		memberDao.removeMember(c);
		
		return "redirect:memberManagement";	
	}
	
	@RequestMapping("changeMember")
	public String changeMember(Member m,HttpServletRequest request){
		
		return null;
	}
	
	
	
		/*----------------------------	고객 관리 컨트롤러---------------------------------*/
	@RequestMapping(value="customerDelete", method=RequestMethod.POST)
	public String customerDelete(String c){
		
		customerService.removeCustomerService(c);
		
		return "redirect:customerService";
	}
	
	@RequestMapping(value="customerService",method=RequestMethod.GET)
	public String customerService(Model model,String page){
		
		if(page ==null){
		List<CustomerService> list = customerService.getCustomerServices(1);
		model.addAttribute("list",list);
	}
		if(page !=null){
			List<CustomerService> list = customerService.getCustomerServices(Integer.parseInt(page));
			model.addAttribute("list",list);
			
		}
				return "/WEB-INF/view/management/customerService.jsp";
	}
		
	@RequestMapping(value="customerService",method=RequestMethod.POST)
	public String customerService(Model model,String field,String query){
		List<CustomerService> list = customerService.getCustomerServices(1,field,query);
		model.addAttribute("list",list);
			
				return "/WEB-INF/view/management/customerService.jsp";
	}
		
	/*----------------------------------공지 관리 컨트롤---------------------------*/
	@RequestMapping(value="noticeManagement",method=RequestMethod.GET)
	public String NoticeManagement(Model model,String page){
		
		if(page != null){
		List<Notice> list= noticeDao.getTotalNotices(Integer.parseInt(page));
		
		model.addAttribute("list",list);
		}
		
		if(page ==null){
		List<Notice> list= noticeDao.getTotalNotices(1);
		
		model.addAttribute("list",list);
		}
		
		return  "/WEB-INF/view/management/noticeManagement.jsp";
	}
	

	

}
