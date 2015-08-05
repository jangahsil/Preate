package com.jass.preate.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/download/*")
public class DownloadController{

	@RequestMapping("board")
	public void boardDownload(String file, HttpServletRequest request, HttpServletResponse response) throws IOException {

		//String fname = request.getParameter("file");
		
		//response.setHeader("Content-Disposition", "attachment;filename="+fname);
		response.setHeader("Content-Disposition", "attachment;filename="+file);
		response.setContentType("application/octet-stream");
		
		ServletContext application  = request.getServletContext();
		
		String url = "/resource/upload/board";
		String path = application.getRealPath(url);
		//String fpath = path + "\\" + fname;
		String fpath = path + "\\" + file;
		
		InputStream ins = new FileInputStream(fpath);
		OutputStream outs = response.getOutputStream();
		
		byte[] bowl = new byte[1024];
		int len = 0;
		
		while ((len = ins.read(bowl, 0, 1024)) >= 0) {
			outs.write(bowl, 0, len);
		}
		
		outs.flush();
		outs.close();
		ins.close();
	
	}
	
	@RequestMapping("contest")
	public void contestDownload(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String fname = request.getParameter("file");
		
		response.setHeader("Content-Disposition", "attachment;filename="+fname);
		response.setContentType("application/octet-stream");
		
		ServletContext application  = request.getServletContext();
		
		String url = "/resource/upload/contest";
		String path = application.getRealPath(url);
		String fpath = path + "\\" + fname;
		
		InputStream ins = new FileInputStream(fpath);
		OutputStream outs = response.getOutputStream();
		
		byte[] bowl = new byte[1024];
		int len = 0;
		
		while ((len = ins.read(bowl, 0, 1024)) >= 0) {
			outs.write(bowl, 0, len);
		}
		
		outs.flush();
		outs.close();
		ins.close();
	
	}
	
	@RequestMapping("portfolio")
	public void portfolioDownload(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String fname = request.getParameter("file");
		
		response.setHeader("Content-Disposition", "attachment;filename="+fname);
		response.setContentType("application/octet-stream");
		
		ServletContext application  = request.getServletContext();
		
		String url = "/resource/upload/portfolio";
		String path = application.getRealPath(url);
		String fpath = path + "\\" + fname;
		
		InputStream ins = new FileInputStream(fpath);
		OutputStream outs = response.getOutputStream();
		
		byte[] bowl = new byte[1024];
		int len = 0;
		
		while ((len = ins.read(bowl, 0, 1024)) >= 0) {
			outs.write(bowl, 0, len);
		}
		
		outs.flush();
		outs.close();
		ins.close();
	
	}
	
}
