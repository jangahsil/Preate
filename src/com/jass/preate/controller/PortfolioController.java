package com.jass.preate.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import java.text.ParseException;
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

import com.jass.preate.dao.FieldSelectDao;
import com.jass.preate.dao.PortfolioAttachedFileDao;
import com.jass.preate.dao.PortfolioDao;
import com.jass.preate.vo.FieldSelect;
import com.jass.preate.vo.Portfolio;

@Controller
@RequestMapping("/portfolio/*")
public class PortfolioController {

	private PortfolioDao portfolioDao;
	private FieldSelectDao fieldSelectDao;
	private PortfolioAttachedFileDao portfolioAttachedFileDao;

	@Autowired
	public void setPortfolioDao(PortfolioDao portfolioDao) {
		this.portfolioDao = portfolioDao;
	}

	@Autowired
	public void setFieldSelectDao(FieldSelectDao fieldSelectDao) {
		this.fieldSelectDao = fieldSelectDao;
	}

	@Autowired
	public void setPortfolioAttachedFileDao(
			PortfolioAttachedFileDao portfolioAttachedFileDao) {
		this.portfolioAttachedFileDao = portfolioAttachedFileDao;
	}

	@RequestMapping("portfolio")
	public String portfolio(Model model) {

		List<Portfolio> list = portfolioDao.getPortfolios(1);
		model.addAttribute("list", list);

		return "portfolio.portfolio";

	}

	@RequestMapping("portfolioImage")
	public String portfolioImage(String c, Model model) {

		Portfolio portfolio = portfolioDao.getPortfolio(c);
		model.addAttribute("p", portfolio);

		/*
		 * PortfolioAttachedFile portfolioAttachedFile =
		 * portfolioAttachedFileDao.getPortfolioAttachedFile(c);
		 * model.addAttribute("pi", portfolioAttachedFile);
		 */

		return "portfolio.portfolioImage";

	}

	@RequestMapping("portfolioDetail")
	public String portfolioDetail(String c, String mid, String writer,
			Model model) {

		Portfolio portfolio = portfolioDao.getPortfolio(c);
		model.addAttribute("p", portfolio);

		List<FieldSelect> list = fieldSelectDao.getFieldSelects(mid);
		model.addAttribute("list", list);

		List<Portfolio> list2 = portfolioDao.getPortfoliosByWriter(writer);
		model.addAttribute("list2", list2);

		return "portfolio.portfolioDetail";

	}

	@RequestMapping(value = "portfolioReg", method = RequestMethod.GET)
	public String portfolioReg() {

		return "portfolio.portfolioReg";
	}

	@RequestMapping(value = "portfolioReg", method = RequestMethod.POST)
	public String portfolioReg(String end, Portfolio portfolio,
	/* PortfolioAttachedFile portfolioAttachedFile, */MultipartFile file,
			HttpServletRequest request) throws IOException, ParseException {

		portfolio.setWriter("car");
	
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date projectEndDate = sdf.parse(end);
		portfolio.setProjectEndDate(projectEndDate);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/portfolio";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;
			// System.out.println(fpath);

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

			portfolio.setPortImage(fname);
			portfolioDao.addPortfolio(portfolio);

			// PortfolioAttachedFile portfolioAttachedFile = new
			// PortfolioAttachedFile();
			/*
			 * portfolioAttachedFile.setName(fname);
			 * portfolioAttachedFile.setPortfolioCode
			 * (portfolioDao.getLastCode());
			 * 
			 * portfolioAttachedFileDao
			 * .addPortfolioAttachedFile(portfolioAttachedFile);
			 */
		}

		return "redirect:portfolio";

	}

}

