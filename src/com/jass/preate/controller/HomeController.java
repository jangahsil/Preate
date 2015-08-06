package com.jass.preate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jass.preate.dao.ContestDao;
import com.jass.preate.dao.NoticeDao;
import com.jass.preate.dao.ProjectDao;
import com.jass.preate.vo.Contest;
import com.jass.preate.vo.Notice;
import com.jass.preate.vo.Project;

@Controller
@RequestMapping("/*")
public class HomeController {

	private ProjectDao projectDao;
	private ContestDao contestDao;
	private NoticeDao noticeDao;
	
	@Autowired
	public void setProjectDao(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}

	@Autowired
	public void setContestDao(ContestDao contestDao) {
		this.contestDao = contestDao;
	}

	@Autowired
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@RequestMapping("/index")
	public String index(Model model) {

		List<Project> list = projectDao.getProjects(1);		
		model.addAttribute("list", list);

		List<Contest> list2 = contestDao.getContests(1);
		model.addAttribute("list2", list2);
		
		List<Notice> list3 = noticeDao.getTotalNotices(1);
		model.addAttribute("list3", list3);
		
		return "home.index";
		
	}
	
}
