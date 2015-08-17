package com.jass.preate.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.ProjectDao;
import com.jass.preate.dao.ScrapDao;
import com.jass.preate.vo.Project;
import com.jass.preate.vo.Scrap;

@Controller
@RequestMapping("/myPage/*")
public class MyProjectController {
 
 private ProjectDao projectDao;
 private ScrapDao scrapDao;
 
 
 @Autowired
 public void setScrapDao(ScrapDao scrapDao) {
	this.scrapDao = scrapDao;
}

@Autowired
 public void setProjectDao(ProjectDao projectDao) {
  this.projectDao = projectDao;
 }
 
 @RequestMapping(value="ProjectSearchDetail",method=RequestMethod.GET)
 public String addProject(Model model){
	 
	 

 return "myPage.ProjectSearchDetail";
 }
 
 @RequestMapping(value="ProjectSearchDetail",method=RequestMethod.POST)
 public String addProject(Project p,HttpServletRequest request){
  projectDao.addProject(p);
  
 return "redirect:ProjectSearchDetail";  
 }
 
 @RequestMapping("Project")
	public String notice(Model model) {
		//NoticeDao noticeDao = new MyBatisNoticeDao();
		/*List<Project> list = projectDao.getProjects();*/

		/*
		 * ModelAndView mv = new ModelAndView();
		 * mv.setViewName("/WEB-INF/view/Customer/notice.jsp");
		 */
		/*model.addAttribute("list", list);*/
		
		List<Scrap> list = scrapDao.getScrap();
		 model.addAttribute("list", list);
	
		
		return "myPage.Project";
	//첫번째 별 두번째 별
	}
}