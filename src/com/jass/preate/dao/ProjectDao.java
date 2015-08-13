package com.jass.preate.dao;

import java.util.List;

import com.jass.preate.vo.Project;

public interface ProjectDao {
	
	public Project getProject(String code);
	
	public List<Project> getProjects();
	
	public List<Project> getProjects(int page);
	
	public List<Project> getProjects(
			int page, 
			String category);
	
	public List<Project> getProjects(
			int page, 
			String category, 
			String query);
	
	public int addProject(Project project);
	
	public int changeProject(Project project);
	
	public int removeProject(String code);
	
} 
