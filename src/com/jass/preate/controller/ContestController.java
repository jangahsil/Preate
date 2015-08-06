package com.jass.preate.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jass.preate.dao.ContestDao;
import com.jass.preate.vo.Contest;

@Controller
@RequestMapping("/contest/*")
public class ContestController {

	private ContestDao contestDao;
	
	@Autowired
	public void setContestDao(ContestDao contestDao) {
		this.contestDao = contestDao;
	}

	@RequestMapping("contest")
	public String contest(Model model) {

		List<Contest> list = contestDao.getContests(1);
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/contest/contest.jsp";
		
	}
	
	@RequestMapping("contestDetail")
	public String contestDetail(Model model, String c) {

		Contest contest = contestDao.getContest(c);
		model.addAttribute("con", contest);
		
		return "/WEB-INF/view/contest/contestDetail.jsp";
		
	}
	
	@RequestMapping(value="contestReg", method=RequestMethod.GET)
	public String contestReg() {
		
		return "/WEB-INF/view/contest/contestReg.jsp";
	}
	
	@RequestMapping(value="contestReg", method=RequestMethod.POST)
	public String contestReg(Contest contest, String start, String end, MultipartFile file, HttpServletRequest request) throws IOException, java.text.ParseException {

		String fname = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date startDate = sdf.parse(start);
		Date endDate = sdf.parse(end);

		contest.setStartDate(startDate);
		contest.setEndDate(endDate);
		
		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/contest";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();
			
		}

		contest.setWriter("jungnampyo");
		contest.setFileName(fname);
		
		contestDao.addContest(contest);
		
		return "redirect:contest";
		
	}
	
	@RequestMapping(value="contestEdit", method=RequestMethod.GET)
	public String contestEdit(Model model, String c) {
		
		Contest contest = contestDao.getContest(c);
		model.addAttribute("con", contest);
		
		return "/WEB-INF/view/contest/contestReg.jsp";
	}
	
	@RequestMapping(value="contestEdit", method=RequestMethod.POST)
	public String contestEdit(Contest contest, String start, String end, MultipartFile file, HttpServletRequest request) throws IOException, java.text.ParseException {

		String fname = null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date startDate = sdf.parse(start);
		Date endDate = sdf.parse(end);

		contest.setStartDate(startDate);
		contest.setEndDate(endDate);
		
		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/contest";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();
			
		}

		contest.setWriter("jungnampyo");
		contest.setFileName(fname);
		
		contestDao.changeContest(contest);
		
		return "redirect:contest";
		
	}
	
	@RequestMapping("contestRemove")
	public String contestRemove(String c) {
	
		contestDao.removeContest(c);
		
		return "redirect:contest";
	}
	
}
