package com.jass.preate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jass.preate.dao.CommentsCommentDao;
import com.jass.preate.dao.NeedFieldDao;
import com.jass.preate.dao.ProjectCommentDao;
import com.jass.preate.dao.ProjectDao;
import com.jass.preate.vo.CommentsComment;
import com.jass.preate.vo.NeedField;
import com.jass.preate.vo.Project;
import com.jass.preate.vo.ProjectComment;

@Controller
@RequestMapping("/project/*")
public class ProjectController {

	private ProjectDao projectDao;
	private ProjectCommentDao projectCommentDao;
	private CommentsCommentDao commentsCommentDao;
	private NeedFieldDao needFieldDao;	

	@Autowired
	public void setProjectDao(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}

	@Autowired
	public void setProjectCommentDao(ProjectCommentDao projectCommentDao) {
		this.projectCommentDao = projectCommentDao;
	}

	@Autowired
	public void setCommentsCommentDao(CommentsCommentDao commentsCommentDao) {
		this.commentsCommentDao = commentsCommentDao;
	}

	@Autowired
	public void setNeedFieldDao(NeedFieldDao needFieldDao) {
		this.needFieldDao = needFieldDao;
	}

	@RequestMapping("project")
	public String projectSearch(Model model) {

		List<Project> list = projectDao.getProjects(1);
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/project/project.jsp";
		
	}
	
	@RequestMapping(value="projectDetail", method=RequestMethod.GET)
	public String projectDetail(Model model, String c) {
		
		Project project = projectDao.getProject(c);
		model.addAttribute("p", project);
		
		List<ProjectComment> list = projectCommentDao.getProjectComments(1, c);
		model.addAttribute("list", list);
		
		List<NeedField> list2 = needFieldDao.getNeedFields(c);
		model.addAttribute("list2", list2);
		
		return "/WEB-INF/view/project/projectDetail.jsp";
	}
	
	@RequestMapping(value="projectDetail", method=RequestMethod.POST)
	public String projectDetail(String c, ProjectComment comment) {
			
		comment.setWriter("jungnampyo");
		comment.setProjectCode(c);
		projectCommentDao.addProjectComment(comment);
	
		return "redirect:projectDetail?c=" + c;
		
	}
	
	@RequestMapping("projectCC")
	public String projectCC(String c, String commentC, CommentsComment cc) {
			
		cc.setWriter("jungnampyo");
		cc.setCommentCode(commentC);
		commentsCommentDao.addCommentsComment(cc);
		
		return "redirect:projectDetail?c=" + c;
		
	}
	
}
